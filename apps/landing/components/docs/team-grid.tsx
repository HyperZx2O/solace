import { TEAM } from "@/lib/docs-content";

function initials(name: string): string {
  return name
    .replace(/[^A-Za-z\s.]/g, "")
    .split(/\s+/)
    .filter(Boolean)
    .slice(-2)
    .map((part) => part[0]?.toUpperCase() ?? "")
    .join("");
}

export function TeamGrid() {
  return (
    <div className="doc-team">
      <ul className="doc-team-grid">
        {TEAM.map((member) => (
          <li key={member.email} className="doc-member">
            <span className="doc-avatar" aria-hidden="true">
              {initials(member.name)}
            </span>
            <span className="doc-member-copy">
              <strong>{member.name}</strong>
              <span>{member.role}</span>
              <a href={`mailto:${member.email}`}>{member.email}</a>
            </span>
          </li>
        ))}
      </ul>
    </div>
  );
}
