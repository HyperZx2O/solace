import {
  API_GROUPS,
  CHANGELOG,
  DOCS_SECTIONS,
  FEATURES,
  LAST_UPDATED,
  STACK,
  TEAM,
  TEAM_NAME,
  type DocBlock,
} from "./docs-content";

function renderBlock(block: DocBlock): string {
  switch (block.kind) {
    case "p":
      return block.text;
    case "list":
      return block.items.map((item) => `- ${item}`).join("\n");
    case "table": {
      const head = `| ${block.head.join(" | ")} |`;
      const rule = `| ${block.head.map(() => "---").join(" | ")} |`;
      const rows = block.rows.map((row) => `| ${row.join(" | ")} |`).join("\n");
      return `${head}\n${rule}\n${rows}`;
    }
    case "diagram":
      return block.variant === "architecture"
        ? "```\nUI (Flutter, Android)\n  -> API (NestJS)\n    -> services (auth, consent, check-ins, journal, crisis, therapist)\n      -> PostgreSQL\n      -> Redis / BullMQ\n```"
        : "```\ninput (check-in, journal)\n  -> local encrypted store\n    -> sync queue\n      -> API\n        -> crisis classifier\n          -> escalation queue\n            -> therapist alert\n  <- feedback (task, safety plan)\n```";
    case "screens":
      return "_Product screens: check-in, grounding, crisis, settings. See /docs._";
    case "team":
      return TEAM.map((member) => `- ${member.name} — ${member.role} — ${member.email}`).join("\n");
    case "features":
      return FEATURES.map((feature) => `- ${feature.name} — ${feature.status} — ${feature.note}`).join("\n");
    case "stack":
      return STACK.map((row) => `- ${row.layer}: ${row.choice}. ${row.note}`).join("\n");
    case "api":
      return API_GROUPS.map((group) => `- ${group.group}: ${group.endpoints}. ${group.note}`).join("\n");
    case "changelog":
      return CHANGELOG.map((entry) => `- ${entry.version} — ${entry.title}: ${entry.note}`).join("\n");
    default:
      return "";
  }
}

export function docsMarkdown(): string {
  const lines: string[] = [
    "# Solace — product and technical documentation",
    "",
    `Team: ${TEAM_NAME}`,
    `Last updated: ${LAST_UPDATED}`,
    "",
    "Source: /docs. This export is generated from the same content module as the page.",
    "",
  ];

  for (const section of DOCS_SECTIONS) {
    lines.push(`## ${section.title}`, "");
    if (section.lead) lines.push(section.lead, "");
    for (const block of section.blocks) {
      const rendered = renderBlock(block);
      if (rendered) lines.push(rendered, "");
    }
  }

  return lines.join("\n").trimEnd() + "\n";
}
