import { NextResponse } from "next/server";
import { db } from "@/lib/pg";

export const runtime = "nodejs";
export const dynamic = "force-dynamic";

const EMAIL = /^[^\s@]{1,64}@[^\s@.]+(?:\.[^\s@.]+)+$/;
const MAX_BODY = 2048;

// Per-instance only — function instances do not share memory, so this blunts
// casual abuse but is not authoritative. Real volume control belongs at the edge
// (Vercel Firewall rate limiting) or in a shared store (Upstash Redis).
const hits = new Map<string, number[]>();
function limited(ip: string, limit = 5, windowMs = 60_000): boolean {
  const now = Date.now();
  const recent = (hits.get(ip) ?? []).filter((at) => now - at < windowMs);
  recent.push(now);
  hits.set(ip, recent);
  if (hits.size > 5000) hits.clear();
  return recent.length > limit;
}

function clientIp(req: Request): string {
  const forwarded = req.headers.get("x-forwarded-for");
  return forwarded?.split(",")[0]?.trim() || req.headers.get("x-real-ip") || "unknown";
}

function reject(code: string, status: number) {
  return NextResponse.json({ ok: false, code }, { status });
}

export async function POST(req: Request) {
  const raw = await req.text();
  if (raw.length > MAX_BODY) return reject("invalid", 400);

  let parsed: unknown;
  try {
    parsed = JSON.parse(raw);
  } catch {
    return reject("invalid", 400);
  }

  const body = (parsed ?? {}) as Record<string, unknown>;

  // Honeypot: a hidden field humans never see. Store nothing, answer normally.
  if (typeof body.website === "string" && body.website.trim() !== "") {
    return NextResponse.json({ ok: true, status: "joined" });
  }

  const email = typeof body.email === "string" ? body.email.trim().toLowerCase() : "";
  if (email.length > 254 || !EMAIL.test(email)) return reject("invalid", 400);

  // Counted after validation so a typo spree does not lock a real visitor out.
  if (limited(clientIp(req))) return reject("rate_limited", 429);

  try {
    const { rowCount } = await db().query(
      "insert into waitlist (email) values ($1) on conflict (email) do nothing",
      [email],
    );
    return NextResponse.json({ ok: true, status: rowCount ? "joined" : "already" });
  } catch (err) {
    // Log the reason server-side; never echo database detail to the client.
    console.error("waitlist insert failed", err instanceof Error ? err.message : err);
    return reject("unavailable", 503);
  }
}
