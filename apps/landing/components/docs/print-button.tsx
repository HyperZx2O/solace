"use client";

export function PrintButton() {
  return (
    <button className="doc-link-button" type="button" onClick={() => window.print()}>
      Print / PDF
    </button>
  );
}
