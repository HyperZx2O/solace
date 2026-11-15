"use client";

import { useEffect, useSyncExternalStore } from "react";
import type { Language } from "./types";

const STORAGE_KEY = "Solace.language";
const EVENT = "Solace:language";

function readLang(): Language {
  try {
    const v = window.localStorage.getItem(STORAGE_KEY);
    return v === "bn" ? "bn" : "en";
  } catch {
    return "en";
  }
}

function getSnapshot(): Language {
  if (typeof window === "undefined") return "en";
  return readLang();
}

function getServerSnapshot(): Language {
  return "en";
}

function subscribe(onStoreChange: () => void) {
  window.addEventListener(EVENT, onStoreChange);
  window.addEventListener("storage", onStoreChange);
  return () => {
    window.removeEventListener(EVENT, onStoreChange);
    window.removeEventListener("storage", onStoreChange);
  };
}

function setLang(language: Language) {
  try {
    window.localStorage.setItem(STORAGE_KEY, language);
  } catch {
    /* ignore */
  }
  window.dispatchEvent(new Event(EVENT));
  document.documentElement.lang = language === "bn" ? "bn" : "en";
}

export function useI18n() {
  const lang = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  useEffect(() => {
    if (document.documentElement.lang !== lang) {
      document.documentElement.lang = lang;
    }
  }, [lang]);
  return {
    lang,
    t: (en: string, bn: string) => (lang === "bn" ? bn : en),
    setLang,
  };
}

export function LanguageSwitch({ className = "" }: { className?: string }) {
  const { lang, setLang, t } = useI18n();
  const next = lang === "en" ? "bn" : "en";
  const label = t("Switch language", "ভাষা বদলান");
  return (
    <button
      type="button"
      className={`fs-icon-btn ${className}`}
      aria-label={label}
      title={lang === "en" ? "বাংলা" : "English"}
      onClick={() => setLang(next)}
    >
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
        <circle cx="12" cy="12" r="9" />
        <path d="M3 12h18" />
        <path d="M12 3c2.4 2.5 3.6 5.5 3.6 9S14.4 18.5 12 21c-2.4-2.5-3.6-5.5-3.6-9S9.6 5.5 12 3Z" />
      </svg>
    </button>
  );
}
