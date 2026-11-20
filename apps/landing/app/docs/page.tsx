import type { Metadata } from "next";
import Image from "next/image";
import { notFound } from "next/navigation";
import "./docs.css";
import { DocsNav } from "@/components/docs/docs-nav";
import { DocsSearch } from "@/components/docs/docs-search";
import { FlowDiagram } from "@/components/docs/flow-diagram";
import { PrintButton } from "@/components/docs/print-button";
import { TeamGrid } from "@/components/docs/team-grid";
import {
  API_GROUPS,
  CHANGELOG,
  DOCS_SECTIONS,
  FEATURES,
  LAST_UPDATED,
  STACK,
  TEAM_NAME,
  type DocBlock,
} from "@/lib/docs-content";

export const dynamic = "force-static";

const isPublic = () => process.env.DOCS_PUBLIC === "true";

export function generateMetadata(): Metadata {
  const open = isPublic();
  return {
    title: "Solace — product and technical documentation",
    description:
      "The pitch, the product, the architecture, the data and the limits: Solace, a trauma-recovery companion for the days between therapy sessions.",
    robots: open ? { index: true, follow: true } : { index: false, follow: false },
    openGraph: {
      title: "Solace — product and technical documentation",
      description: "Pitch deck, system architecture and honest limits for Solace.",
      type: "article",
    },
  };
}

const SCREENS = [
  { src: "/docs/screens/home.png", alt: "Today screen with check-in prompt" },
  { src: "/docs/screens/grounding.png", alt: "Grounding exercise screen" },
  { src: "/docs/screens/crisis.png", alt: "Crisis support screen" },
  { src: "/docs/screens/settings.png", alt: "Settings and privacy screen" },
];

function Status({ status }: { status: "live" | "upcoming" | "planned" }) {
  return <span className={`doc-status doc-status-${status}`}>{status}</span>;
}

function Block({ block }: { block: DocBlock }) {
  switch (block.kind) {
    case "p":
      return <p>{block.text}</p>;
    case "list":
      return (
        <ul className="doc-list">
          {block.items.map((item) => (
            <li key={item}>{item}</li>
          ))}
        </ul>
      );
    case "table":
      return (
        <div className="doc-table-wrap">
          <table className="doc-table">
            <thead>
              <tr>
                {block.head.map((cell) => (
                  <th key={cell} scope="col">
                    {cell}
                  </th>
                ))}
              </tr>
            </thead>
            <tbody>
              {block.rows.map((row) => (
                <tr key={row.join("|")}>
                  {row.map((cell, index) =>
                    index === 0 ? (
                      <th key={cell} scope="row">
                        {cell}
                      </th>
                    ) : (
                      <td key={`${index}-${cell}`}>{cell}</td>
                    ),
                  )}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      );
    case "diagram":
      return <FlowDiagram variant={block.variant} />;
    case "screens":
      return (
        <ul className="doc-screens">
          {SCREENS.map((screen) => (
            <li key={screen.src}>
              <Image src={screen.src} alt={screen.alt} width={1080} height={1920} sizes="(max-width: 700px) 60vw, 240px" suppressHydrationWarning />
              <small>{screen.alt}</small>
            </li>
          ))}
        </ul>
      );
    case "team":
      return <TeamGrid />;
    case "features":
      return (
        <ul className="doc-features">
          {FEATURES.map((feature) => (
            <li key={feature.name}>
              <span className="doc-feature-name">{feature.name}</span>
              <Status status={feature.status} />
              <span className="doc-feature-note">{feature.note}</span>
            </li>
          ))}
        </ul>
      );
    case "stack":
      return (
        <div className="doc-table-wrap">
          <table className="doc-table">
            <thead>
              <tr>
                <th scope="col">Layer</th>
                <th scope="col">Choice</th>
                <th scope="col">Note</th>
              </tr>
            </thead>
            <tbody>
              {STACK.map((row) => (
                <tr key={row.layer}>
                  <th scope="row">{row.layer}</th>
                  <td>{row.choice}</td>
                  <td>{row.note}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      );
    case "api":
      return (
        <div className="doc-table-wrap">
          <table className="doc-table">
            <thead>
              <tr>
                <th scope="col">Group</th>
                <th scope="col">Endpoints</th>
                <th scope="col">Note</th>
              </tr>
            </thead>
            <tbody>
              {API_GROUPS.map((group) => (
                <tr key={group.group}>
                  <th scope="row">{group.group}</th>
                  <td>
                    <code>{group.endpoints}</code>
                  </td>
                  <td>{group.note}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      );
    case "changelog":
      return (
        <ol className="doc-changelog">
          {CHANGELOG.map((entry) => (
            <li key={`${entry.version}-${entry.title}`}>
              <span>{entry.version}</span>
              <strong>{entry.title}</strong>
              <small>{entry.note}</small>
            </li>
          ))}
        </ol>
      );
    default:
      return null;
  }
}

export default function DocsPage() {
  if (!isPublic()) notFound();

  const pitch = DOCS_SECTIONS.filter((section) => section.group === "pitch");
  const technical = DOCS_SECTIONS.filter((section) => section.group === "technical");
  const searchSections = DOCS_SECTIONS.map(({ id, title }) => ({ id, title }));

  return (
    <div className="doc-page">
      <a className="doc-skip" href="#doc-main">
        Skip to the document
      </a>

      <header className="doc-top">
        <a className="doc-brand" href="/">
          <span aria-hidden="true">≈</span> Solace
        </a>
        <div className="doc-top-actions">
          <DocsSearch sections={searchSections} />
          <PrintButton />
          <a className="doc-link-button" href="/docs/export">
            Markdown
          </a>
        </div>
      </header>

      <main id="doc-main">
        <section className="doc-hero" aria-labelledby="doc-hero-title">
          <h1 id="doc-hero-title">The days between sessions.</h1>
          <p className="doc-hero-lead">
            Solace is a trauma-recovery companion for the six days therapy does not cover. Small check-ins, one task,
            a private journal, and a crisis line that is always one tap away.
          </p>
          <div className="doc-hero-actions">
            <a className="doc-primary" href="#problem">
              Read the pitch
            </a>
            <PrintButton />
          </div>
          <p className="doc-hero-meta">
            Android 1.0.0-rc.1 · {TEAM_NAME} · last updated <span className="doc-nowrap">{LAST_UPDATED}</span>
          </p>
        </section>

        <div className="doc-layout">
          <aside className="doc-aside">
            <DocsNav
              groups={[
                { label: "Pitch", items: pitch.map(({ id, title }) => ({ id, title })) },
                { label: "Technical", items: technical.map(({ id, title }) => ({ id, title })) },
              ]}
            />
          </aside>

          <article className="doc-body">
            <div className="doc-track">
              <p className="doc-track-label">The pitch</p>
              <p className="doc-track-note">Two minutes, business first.</p>
            </div>
            {pitch.map((section) => (
              <section key={section.id} id={section.id} className="doc-section">
                <h2>{section.title}</h2>
                {section.lead ? <p className="doc-lead">{section.lead}</p> : null}
                {section.blocks.map((block, index) => (
                  <Block key={`${section.id}-${index}`} block={block} />
                ))}
              </section>
            ))}

            <div className="doc-track">
              <p className="doc-track-label">The system</p>
              <p className="doc-track-note">Ten minutes, engineering first.</p>
            </div>
            {technical.map((section) => (
              <section key={section.id} id={section.id} className="doc-section">
                <h2>{section.title}</h2>
                {section.lead ? <p className="doc-lead">{section.lead}</p> : null}
                {section.blocks.map((block, index) => (
                  <Block key={`${section.id}-${index}`} block={block} />
                ))}
              </section>
            ))}
          </article>
        </div>
      </main>

      <footer className="doc-footer">
        <p>
          Solace · {TEAM_NAME} · {LAST_UPDATED}
        </p>
        <p>
          <a href="/">Landing page</a> · <a href="/docs/export">Markdown</a> ·{" "}
          <a href="mailto:sadman.zarifsaif@gmail.com">Contact</a>
        </p>
        <p className="doc-footer-note">
          This page is generated from the repository at build time. No analytics, no trackers, no clinical data.
        </p>
      </footer>
    </div>
  );
}
