export type DocBlock =
  | { kind: "p"; text: string }
  | { kind: "list"; items: string[] }
  | { kind: "table"; head: string[]; rows: string[][] }
  | { kind: "diagram"; variant: "architecture" | "dataflow" }
  | { kind: "screens" }
  | { kind: "team" }
  | { kind: "features" }
  | { kind: "stack" }
  | { kind: "api" }
  | { kind: "changelog" };

export type DocSection = {
  id: string;
  group: "pitch" | "technical";
  title: string;
  lead?: string;
  blocks: DocBlock[];
};

export type TeamMember = {
  name: string;
  role: string;
  email: string;
};

export const TEAM_NAME = "The DillyDalliers";

export const TEAM: TeamMember[] = [
  { name: "MD. Sadman Saif Zarif", role: "Founding team", email: "sadman.zarifsaif@gmail.com" },
  { name: "Noha Saabreen", role: "Founding team", email: "nohasaabreen@gmail.com" },
  { name: "Ruwaid Muntajim", role: "Founding team", email: "ruwaid19500@gmail.com" },
  { name: "Anha Khan", role: "Founding team", email: "anhakhan0111@gmail.com" },
  { name: "Juhaira Mehjabin", role: "Founding team", email: "juhairamehjabin1@gmail.com" },
];

export const FEATURES: { name: string; status: "live" | "upcoming" | "planned"; note: string }[] = [
  { name: "Daily check-in", status: "live", note: "Mood plus one body signal, under a minute." },
  { name: "One task for today", status: "live", note: "Chosen from how the check-in reads." },
  { name: "Journal", status: "live", note: "Encrypted on device; AI scan only for crisis language." },
  { name: "Grounding", status: "live", note: "Short sensory exercise, no account required." },
  { name: "Safety plan", status: "live", note: "Editable, shareable only by explicit choice." },
  { name: "Crisis support", status: "live", note: "One tap to Kaan Pete Roi or 999." },
  { name: "Therapist connection", status: "live", note: "Invite-only; no patient directory, no matching." },
  { name: "Offline sync", status: "live", note: "Queued writes replay when the network returns." },
  { name: "Biometric app lock", status: "live", note: "Local session, screen capture blocked." },
  { name: "iOS build", status: "planned", note: "Android first; iOS not started." },
  { name: "Clinic dashboard", status: "planned", note: "For invited therapists only." },
  { name: "Bengali copy review", status: "upcoming", note: "Strings exist; clinical review pending." },
];

export const STACK: { layer: string; choice: string; note: string }[] = [
  { layer: "Mobile", choice: "Flutter 3.47 / Dart 3.13", note: "Android first, minSdk 24, targetSdk 36." },
  { layer: "Web", choice: "Next.js 16.4, React 19.2", note: "App Router, hand-authored CSS, no UI kit." },
  { layer: "API", choice: "NestJS 11, TypeScript 5", note: "OpenAPI contract, 65 documented operations." },
  { layer: "Data", choice: "PostgreSQL + Prisma 6", note: "Append-only tables for clinical records." },
  { layer: "Queue", choice: "Redis + BullMQ", note: "Crisis escalation and background jobs." },
  { layer: "Mobile storage", choice: "SQLCipher (SQLite)", note: "Encrypted at rest on the device." },
  { layer: "AI", choice: "Groq / Cerebras / OpenRouter", note: "One-word crisis tier; heuristic fallback." },
  { layer: "Hosting", choice: "Vercel (web), container host (API)", note: "API target not yet deployed." },
];

export const API_GROUPS: { group: string; endpoints: string; note: string }[] = [
  { group: "Auth", endpoints: "/v1/auth/signup, login, refresh, logout, sessions", note: "JWT access + rotating refresh, Argon2id." },
  { group: "Consent", endpoints: "/v1/consents, /v1/consents/history", note: "Every clinical action is gated on a recorded consent." },
  { group: "Surveys", endpoints: "/v1/surveys/{id}, responses, complete, results", note: "Versioned instruments; retakes allowed." },
  { group: "Safety plan", endpoints: "/v1/safety-plan, fields, sharing", note: "Owner-controlled sharing; revocable." },
  { group: "Check-ins", endpoints: "/v1/checkins", note: "Mood and body signal; feeds task selection." },
  { group: "Journal", endpoints: "/v1/journal", note: "Encrypted fields; AI scan is explicit." },
  { group: "Crisis", endpoints: "/v1/crisis", note: "Escalation queue; monitoring withdrawal supported." },
  { group: "Therapist", endpoints: "/v1/therapist", note: "Invite, connection, alert views." },
  { group: "Privacy", endpoints: "/v1/privacy, export, deletion", note: "Export and delete requests are first-class." },
  { group: "Health", endpoints: "/health, /ready", note: "Liveness and dependency readiness." },
];

export const CHANGELOG: { version: string; title: string; note: string }[] = [
  { version: "1.0.0-rc.1", title: "Android prerelease", note: "Signed split APKs, minified, release keystore." },
  { version: "0.x", title: "API core CP1–CP5", note: "Auth, consent, surveys, safety plan, crisis, therapist, journals, privacy." },
  { version: "0.x", title: "Offline layer", note: "Encrypted queue, replay on reconnect, local session store." },
  { version: "0.x", title: "Landing rebrand", note: "Between to Solace; fluid hero, waitlist, bilingual copy." },
  { version: "0.x", title: "Docs", note: "This page. Static, gated by DOCS_PUBLIC, no admin panel." },
];

export const LAST_UPDATED = "2026-11-20";

export const DOCS_SECTIONS: DocSection[] = [
  {
    id: "problem",
    group: "pitch",
    title: "Problem",
    lead: "Therapy is an hour a week. The other six days are unowned.",
    blocks: [
      { kind: "p", text: "A person in trauma recovery sees a therapist for fifty minutes, then goes home to the hardest part: the ordinary Tuesday. Between sessions there is no structure, no continuity, and no safe place to put the hour." },
      { kind: "p", text: "Existing tools split the job badly. Meditation apps optimise streaks. Journal apps store text and stop. Crisis lines answer emergencies but cannot hold a week. None of them know what the therapist already knows." },
      { kind: "list", items: ["No continuity between sessions", "Tools that reward streaks instead of rest", "Crisis support separated from daily care", "Clinical context lost at the clinic door"] },
    ],
  },
  {
    id: "solution",
    group: "pitch",
    title: "Solution",
    lead: "A companion for the days between sessions, built around one small thing at a time.",
    blocks: [
      { kind: "p", text: "Solace asks for a check-in, offers one task chosen for how the day reads, and gives the journal a place to go. It is not a chatbot and does not pretend to be a therapist. It holds the days so the next session has something to work with." },
      { kind: "list", items: ["Check in: mood plus one body signal", "One task: small, chosen, optional", "Journal: private by default", "Grounding: usable in ninety seconds", "Safety plan: written before it is needed", "Crisis: one tap to a real line"] },
    ],
  },
  {
    id: "why-now",
    group: "pitch",
    title: "Why now",
    blocks: [
      { kind: "p", text: "Three shifts make this buildable now: phones are the default computer in South Asia, small language models are cheap enough to run crisis classification on every journal entry, and clinical practice has accepted that care continues between appointments." },
      { kind: "p", text: "The missing piece was never demand. It was a system that could hold consent, context and crisis safely on a phone that loses signal." },
    ],
  },
  {
    id: "demo",
    group: "pitch",
    title: "Product demo",
    lead: "The Android release, not a mockup.",
    blocks: [{ kind: "screens" }],
  },
  {
    id: "market",
    group: "pitch",
    title: "Market",
    blocks: [
      { kind: "p", text: "The first market is Bangladesh: a young, mobile-first population, a severe shortage of therapists, and a cultural habit of keeping distress inside the family. Adjacent markets in South Asia share the same shape." },
      { kind: "p", text: "We are not sizing a TAM we cannot defend. The wedge is narrow: people already in therapy, plus the clinics that serve them. That group has a therapist, a schedule, and a gap between sessions." },
    ],
  },
  {
    id: "business-model",
    group: "pitch",
    title: "Business model",
    blocks: [
      { kind: "p", text: "Consumer subscription for the companion, with a free tier that keeps the crisis line and the safety plan open. Clinic seats for invited therapists, billed per active patient. No advertising, no data sale, no engagement-based pricing." },
      { kind: "p", text: "Pricing is a hypothesis, not a result. It will be tested with the first clinic pilot, not in a spreadsheet." },
    ],
  },
  {
    id: "traction",
    group: "pitch",
    title: "Traction",
    lead: "Pre-launch. We are not going to invent numbers.",
    blocks: [
      { kind: "list", items: ["Signed Android release candidate, 1.0.0-rc.1", "API core through CP1–CP5 with an OpenAPI contract", "Offline-first mobile architecture with encrypted storage", "Waitlist open; no user metrics published yet"] },
      { kind: "p", text: "The next honest milestone is a supervised pilot with a clinic, not a download count." },
    ],
  },
  {
    id: "competition",
    group: "pitch",
    title: "Competition",
    blocks: [
      { kind: "table", head: ["Category", "What it does", "What it cannot do"], rows: [["Meditation apps", "Habit and content", "No clinical context, no crisis path"], ["Therapy marketplaces", "Match a person to a therapist", "Stop at the session boundary"], ["Journals", "Store what you write", "No safety plan, no escalation"], ["Crisis lines", "Answer the emergency", "Cannot hold the week"], ["General AI chat", "Conversation", "No consent record, no audit trail"]] },
      { kind: "p", text: "Solace sits between the session and the emergency. That is a narrow place, and it is deliberately narrow." },
    ],
  },
  {
    id: "advantage",
    group: "pitch",
    title: "Unique advantage",
    blocks: [
      { kind: "list", items: ["Crisis-aware by architecture, not by disclaimer", "Consent recorded before every clinical action", "Offline-first: the app works when the network does not", "Therapist boundary enforced in the data model", "Append-only clinical records with an access log"] },
      { kind: "p", text: "The moat is not the model. It is the trust surface: the part that decides what may be stored, who may see it, and what happens at 2am." },
    ],
  },
  {
    id: "go-to-market",
    group: "pitch",
    title: "Go-to-market",
    blocks: [
      { kind: "p", text: "Start with therapists, not app stores. A clinic invites its own patients; the patient gets a companion that already knows the plan. That keeps acquisition honest and gives the product a clinical reference from day one." },
      { kind: "list", items: ["Clinic pilots in Dhaka", "University counselling centres", "Therapist referral loop", "Waitlist as a demand check, not a growth channel"] },
    ],
  },
  {
    id: "team",
    group: "pitch",
    title: "Team",
    lead: `${TEAM_NAME}. Five people, one product.`,
    blocks: [{ kind: "team" }],
  },
  {
    id: "vision",
    group: "pitch",
    title: "Vision",
    blocks: [
      { kind: "p", text: "A world where the week between sessions is not a gap. Where the work a person does alone is legible to the person helping them, and where asking for help does not require explaining everything again." },
      { kind: "p", text: "Solace is a companion, not a cure. If it makes the next session better, it did its job." },
    ],
  },
  {
    id: "overview",
    group: "technical",
    title: "Product overview",
    blocks: [
      { kind: "p", text: "Solace is a trauma-recovery companion for the days between therapy sessions. The mobile app owns the daily loop: check in, one task, journal, grounding, safety plan, crisis access. The API owns clinical state, consent, and the audit trail." },
      { kind: "table", head: ["User", "What they get"], rows: [["Patient", "A daily loop, a private journal, a safety plan, one-tap crisis access"], ["Therapist", "Invited connection, plan visibility, crisis alerts for connected patients"], ["Safety team", "Alert acknowledgement, no broad patient directory"]] },
    ],
  },
  {
    id: "features",
    group: "technical",
    title: "Feature matrix",
    lead: "Verified at the 1.0.0-rc.1 build. No runtime sync.",
    blocks: [{ kind: "features" }],
  },
  {
    id: "architecture",
    group: "technical",
    title: "Architecture",
    blocks: [
      { kind: "diagram", variant: "architecture" },
      { kind: "p", text: "The client is Flutter on Android with an encrypted local database and a replay queue. The API is NestJS behind an OpenAPI contract, backed by Postgres and Redis. The landing site is a separate Next.js app and never touches clinical data." },
    ],
  },
  {
    id: "data-flow",
    group: "technical",
    title: "Data flow",
    blocks: [
      { kind: "diagram", variant: "dataflow" },
      { kind: "p", text: "A journal entry is written locally first. When the device has network, the queue replays it to the API. Crisis classification runs on the text; a positive tier produces an escalation job, not a silent flag. Every clinical read is written to the access log." },
    ],
  },
  {
    id: "stack",
    group: "technical",
    title: "Technology stack",
    blocks: [{ kind: "stack" }],
  },
  {
    id: "api",
    group: "technical",
    title: "API",
    lead: "65 documented operations behind one OpenAPI contract.",
    blocks: [
      { kind: "api" },
      { kind: "p", text: "Auth is JWT access plus rotating refresh tokens. Passwords are Argon2id. Clinical endpoints require a recorded consent and a role that matches the resource. Errors use a single envelope so the client can map them without parsing prose." },
    ],
  },
  {
    id: "data-layer",
    group: "technical",
    title: "Data layer",
    blocks: [
      { kind: "list", items: ["Postgres as the system of record, Prisma as the schema contract", "Append-only tables for clinical events; runtime role cannot UPDATE or DELETE them", "Field-level encryption for sensitive journal content", "SQLCipher on device; the local database is encrypted at rest", "Redis for queue state only, never for clinical records"] },
      { kind: "p", text: "There is no scraping pipeline and no third-party data ingestion. Every row is either written by the user or by a clinician acting on a connection the user accepted." },
    ],
  },
  {
    id: "ai-layer",
    group: "technical",
    title: "AI layer",
    blocks: [
      { kind: "p", text: "One job: classify a piece of text as tier1, tier2 or none for mental-health crisis. The classifier calls Groq, Cerebras or OpenRouter in order, whichever key is configured, using a small Llama model and a one-word answer." },
      { kind: "list", items: ["Timeout per provider; first success wins", "Deterministic keyword fallback when every provider fails", "No RAG, no GraphRAG, no embeddings in this build", "No generated advice reaches the user", "Classification output is a tier, not a diagnosis"] },
      { kind: "p", text: "Explainability is structural: the user sees a tier-driven action, never a model's reasoning. The audit trail records that a classification happened, not the text it read." },
    ],
  },
  {
    id: "roadmap",
    group: "technical",
    title: "Roadmap",
    blocks: [
      { kind: "table", head: ["Horizon", "Work"], rows: [["Now", "Android release candidate, clinic pilot readiness, Bengali review"], ["Next", "iOS build, therapist dashboard, supervised pilot"], ["Later", "Clinic billing, outcome reporting, regional crisis-line coverage"]] },
      { kind: "p", text: "Nothing on this list is committed by a date. The order is deliberate: safety and clinical trust before surface area." },
    ],
  },
  {
    id: "performance",
    group: "technical",
    title: "Performance and scale",
    blocks: [
      { kind: "list", items: ["Landing and docs are static; no server round trip on read", "API is stateless; Postgres and Redis are the only stateful pieces", "Writes are queued on device and replayed in order", "Crisis classification has a hard timeout and a local fallback", "No load numbers published: the pilot will produce them"] },
      { kind: "p", text: "The bottleneck we expect is not request volume. It is the cost of being wrong about a crisis signal, which is why the fallback is deterministic and the queue is durable." },
    ],
  },
  {
    id: "security",
    group: "technical",
    title: "Security",
    blocks: [
      { kind: "list", items: ["Argon2id password hashing, rotating refresh tokens", "RBAC: patient, therapist, safety_team; no admin role in the clinical API", "Consent gate before clinical reads and writes", "Append-only audit tables and access log", "Field encryption for sensitive content", "FLAG_SECURE and biometric lock on Android", "Crisis-monitoring withdrawal is a first-class flow"] },
      { kind: "p", text: "The public docs page carries no clinical data and no admin surface. Visibility is a build-time environment flag, evaluated server-side; when it is off, the route returns 404 with no content in the payload." },
    ],
  },
  {
    id: "analytics",
    group: "technical",
    title: "Analytics",
    blocks: [
      { kind: "p", text: "There is no production analytics pipeline. The landing page has no trackers by design, and the app does not ship a third-party SDK." },
      { kind: "table", head: ["KPI", "Why it matters", "Status"], rows: [["Check-in completion", "Whether the daily loop is usable", "Not instrumented"], ["Task completion", "Whether the task fits the day", "Not instrumented"], ["Crisis path latency", "Time from signal to human response", "Queue metrics only"], ["Pilot retention", "Whether clinics keep inviting", "Pilot pending"]] },
      { kind: "p", text: "Instrumentation will be local-first and aggregate-only. No journal text, no email, no device identifier in any metric." },
    ],
  },
  {
    id: "changelog",
    group: "technical",
    title: "Changelog",
    blocks: [{ kind: "changelog" }],
  },
  {
    id: "contributors",
    group: "technical",
    title: "Contributors",
    lead: `${TEAM_NAME} — the people who built it.`,

    blocks: [
      { kind: "team" },
      { kind: "p", text: "Contact for technical review: sadman.zarifsaif@gmail.com." },
    ],
  },
];

export function sectionText(section: DocSection): string {
  const parts: string[] = [section.title, section.lead ?? ""];
  for (const block of section.blocks) {
    if (block.kind === "p") parts.push(block.text);
    if (block.kind === "list") parts.push(...block.items);
    if (block.kind === "table") parts.push(...block.head, ...block.rows.flat());
    if (block.kind === "features") parts.push(...FEATURES.map((f) => `${f.name} ${f.status} ${f.note}`));
    if (block.kind === "stack") parts.push(...STACK.map((s) => `${s.layer} ${s.choice} ${s.note}`));
    if (block.kind === "api") parts.push(...API_GROUPS.map((g) => `${g.group} ${g.endpoints} ${g.note}`));
    if (block.kind === "team") parts.push(...TEAM.map((m) => `${m.name} ${m.role} ${m.email}`));
    if (block.kind === "changelog") parts.push(...CHANGELOG.map((c) => `${c.version} ${c.title} ${c.note}`));
  }
  return parts.join(" ").replace(/\s+/g, " ").trim();
}
