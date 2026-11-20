import { docsMarkdown } from "@/lib/docs-markdown";

export const dynamic = "force-static";

export function GET() {
  if (process.env.DOCS_PUBLIC !== "true") {
    return new Response("Not found", {
      status: 404,
      headers: { "content-type": "text/plain; charset=utf-8", "x-robots-tag": "noindex" },
    });
  }

  return new Response(docsMarkdown(), {
    status: 200,
    headers: {
      "content-type": "text/markdown; charset=utf-8",
      "content-disposition": 'attachment; filename="solace-docs.md"',
      "cache-control": "public, max-age=0, must-revalidate",
    },
  });
}
