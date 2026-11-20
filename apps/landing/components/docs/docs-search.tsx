"use client";

import { useEffect, useMemo, useRef, useState } from "react";

type Entry = { id: string; title: string; text: string };

function buildIndex(sections: { id: string; title: string }[]): Entry[] {
  return sections.map((section) => {
    const node = document.getElementById(section.id);
    const text = (node?.innerText ?? "").replace(/\s+/g, " ").trim();
    const body = text.startsWith(section.title) ? text.slice(section.title.length).trim() : text;
    return { ...section, text: body };
  });
}

export function DocsSearch({ sections }: { sections: { id: string; title: string }[] }) {
  const dialogRef = useRef<HTMLDialogElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);
  const [query, setQuery] = useState("");
  const [index, setIndex] = useState<Entry[]>([]);

  function open() {
    setIndex(buildIndex(sections));
    dialogRef.current?.showModal();
    requestAnimationFrame(() => inputRef.current?.focus());
  }

  useEffect(() => {
    const onKey = (event: KeyboardEvent) => {
      if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === "k") {
        event.preventDefault();
        setIndex(buildIndex(sections));
        dialogRef.current?.showModal();
        requestAnimationFrame(() => inputRef.current?.focus());
      }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [sections]);

  const results = useMemo(() => {
    const needle = query.trim().toLowerCase();
    if (!needle) return [];
    return index
      .filter((entry) => `${entry.title} ${entry.text}`.toLowerCase().includes(needle))
      .sort((a, b) => {
        const aTitle = a.title.toLowerCase().includes(needle) ? 1 : 0;
        const bTitle = b.title.toLowerCase().includes(needle) ? 1 : 0;
        return bTitle - aTitle;
      })
      .slice(0, 8);
  }, [query, index]);

  function go(id: string) {
    dialogRef.current?.close();
    setQuery("");
    window.location.hash = id;
  }

  return (
    <>
      <button className="doc-search-open" type="button" onClick={open}>
        Search
        <kbd>⌘K</kbd>
      </button>

      <dialog
        ref={dialogRef}
        className="doc-search-dialog"
        aria-label="Search this document"
        onClose={() => setQuery("")}
      >
        <div className="doc-search-head">
          <input
            ref={inputRef}
            className="doc-search-input"
            type="search"
            value={query}
            placeholder="Search the deck, the stack, the API…"
            aria-label="Search"
            onChange={(event) => setQuery(event.target.value)}
            onKeyDown={(event) => {
              if (event.key === "Enter" && results[0]) {
                event.preventDefault();
                go(results[0].id);
              }
              if (event.key === "Escape") dialogRef.current?.close();
            }}
          />
          <button className="doc-search-close" type="button" onClick={() => dialogRef.current?.close()}>
            Close
          </button>
        </div>

        {query ? (
          results.length ? (
            <ul className="doc-search-results">
              {results.map((result) => (
                <li key={result.id}>
                  <button type="button" onClick={() => go(result.id)}>
                    <span>{result.title}</span>
                    <small>{result.text.slice(0, 96)}…</small>
                  </button>
                </li>
              ))}
            </ul>
          ) : (
            <p className="doc-search-empty">Nothing matches “{query}”.</p>
          )
        ) : (
          <p className="doc-search-empty">Jump to a section. Esc closes.</p>
        )}
      </dialog>
    </>
  );
}
