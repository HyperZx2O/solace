import { NextResponse } from "next/server";
import { timingSafeEqual } from "node:crypto";
import { db } from "@/lib/pg";

export const runtime = "nodejs";
export const dynamic = "force-dynamic";

// Neutralize CSV formula injection when the file is opened in a spreadsheet.
function cell(value: string): string {
  const safe = /^[=+\-@]/.test(value) ? `'${value}` : value;
  return `"${safe.replace(/"/g, '""')}"`;
}

function authorized(req: Request): boolean {
  const expected = Buffer.from(process.env.WAITLIST_EXPORT_TOKEN ?? "");
  const given = Buffer.from((req.headers.get("authorization") ?? "").replace(/^Bearer\s+/i, ""));
  return expected.length > 0 && given.length === expected.length && timingSafeEqual(given, expected);
}

export async function GET(req: Request) {
  if (!process.env.WAITLIST_EXPORT_TOKEN) {
    console.error("waitlist export refused: WAITLIST_EXPORT_TOKEN is not set");
    return NextResponse.json({ ok: false, code: "unavailable" }, { status: 503 });
  }
  if (!authorized(req)) {
    return NextResponse.json({ ok: false, code: "unauthorized" }, { status: 401 });
  }

  try {
    const { rows } = await db().query<{ email: string; created_at: Date }>(
      "select email, created_at from waitlist order by created_at, id",
    );
    const csv = ["email,joined_at", ...rows.map((r) => `${cell(r.email)},${new Date(r.created_at).toISOString()}`)].join("\r\n");
    return new NextResponse(`${csv}\r\n`, {
      headers: {
        "content-type": "text/csv; charset=utf-8",
        "content-disposition": `attachment; filename="waitlist-${new Date().toISOString().slice(0, 10)}.csv"`,
        "cache-control": "no-store",
      },
    });
  } catch (err) {
    console.error("waitlist export failed", err instanceof Error ? err.message : err);
    return NextResponse.json({ ok: false, code: "unavailable" }, { status: 503 });
  }
}
