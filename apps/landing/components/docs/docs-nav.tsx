"use client";

import { useEffect, useState } from "react";

export function DocsNav({ groups }: { groups: { label: string; items: { id: string; title: string }[] }[] }) {
  const [active, setActive] = useState<string>("");

  useEffect(() => {
    const ids = groups.flatMap((group) => group.items.map((item) => item.id));
    const nodes = ids.map((id) => document.getElementById(id)).filter((node): node is HTMLElement => Boolean(node));
    if (!nodes.length || typeof IntersectionObserver === "undefined") return;

    const observer = new IntersectionObserver(
      (entries) => {
        const visible = entries.filter((entry) => entry.isIntersecting);
        if (!visible.length) return;
        visible.sort((a, b) => a.boundingClientRect.top - b.boundingClientRect.top);
        setActive(visible[0].target.id);
      },
      { rootMargin: "-20% 0px -70% 0px", threshold: 0 },
    );

    nodes.forEach((node) => observer.observe(node));
    return () => observer.disconnect();
  }, [groups]);

  return (
    <nav className="doc-nav" aria-label="Document sections">
      {groups.map((group) => (
        <div key={group.label} className="doc-nav-group">
          <p className="doc-nav-label">{group.label}</p>
          <ul>
            {group.items.map((item) => (
              <li key={item.id}>
                <a href={`#${item.id}`} aria-current={active === item.id ? "true" : undefined}>
                  {item.title}
                </a>
              </li>
            ))}
          </ul>
        </div>
      ))}
    </nav>
  );
}
