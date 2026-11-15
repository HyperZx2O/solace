"use client";

import { useEffect, useRef, useState } from "react";
import { FluidCanvas } from "@/components/fluid-canvas";
import { HeroCompanion, type CompanionState } from "@/components/hero-companion";
import { LanguageSwitch, useI18n } from "@/lib/i18n";
import { SmoothScroll } from "@/components/smooth-scroll";

const WAITLIST_KEY = "Solace.waitlist";

export default function LandingPage() {
  const { t } = useI18n();
  const [ready, setReady] = useState(false);
  const [step, setStep] = useState(0);
  const [tile, setTile] = useState<number | null>(null);
  const [email, setEmail] = useState<string | null>(null);
  const belowRef = useRef<HTMLDivElement>(null);

  // One emotional anchor: the creature mirrors what the visitor just did.
  const companion: CompanionState = email ? "joyful" : step === 2 ? "low" : step > 0 ? "calm" : "rest";

  useEffect(() => {
    const id = requestAnimationFrame(() => setReady(true));
    return () => cancelAnimationFrame(id);
  }, []);

  useEffect(() => {
    const root = belowRef.current;
    if (!root) return;
    const nodes = Array.from(root.querySelectorAll<HTMLElement>("[data-scroll]"));
    const revealAll = () => nodes.forEach((el) => el.classList.add("in"));
    if (typeof IntersectionObserver === "undefined") {
      revealAll();
      return;
    }
    const io = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return;
          const el = entry.target as HTMLElement;
          el.style.transitionDelay = `${Number(el.dataset.scroll || 0)}ms`;
          el.classList.add("in");
          io.unobserve(el);
        });
      },
      { rootMargin: "0px 0px -10% 0px", threshold: 0.12 },
    );
    nodes.forEach((el) => io.observe(el));
    // Failsafe: anything already on screen must never stay hidden.
    const timer = window.setTimeout(() => {
      nodes.forEach((el) => {
        if (el.classList.contains("in")) return;
        const r = el.getBoundingClientRect();
        if (r.top < window.innerHeight && r.bottom > 0) el.classList.add("in");
      });
    }, 2000);
    return () => {
      window.clearTimeout(timer);
      io.disconnect();
    };
  }, []);

  const heading = t("Solace", "Solace");
  const sub = t(
    "For the days that matter.",
    "গুরুত্বপূর্ণ দিনগুলোর জন্য",
  );

  const steps = [
    {
      name: t("Check in", "চেক-ইন"),
      detail: t(
        "Under a minute. A mood and one body signal — that is the whole ask.",
        "এক মিনিটেরও কম। একটা মুড আর একটা শারীরিক ইঙ্গিত — এটুকুই।",
      ),
    },
    {
      name: t("One task", "একটা কাজ"),
      detail: t(
        "One small thing, chosen for how you feel today. Then you can stop.",
        "আজ কেমন লাগছে তার উপর ভিত্তি করে একটা ছোট কাজ। এরপর থামতে পারেন।",
      ),
    },
    {
      name: t("Journal", "জার্নাল"),
      detail: t(
        "Write it, or don't. What you keep here stays yours unless you decide otherwise.",
        "লিখুন, বা লিখবেন না। যা এখানে থাকে আপনারই থাকে, যদি না আপনি অন্য কিছু ঠিক করেন।",
      ),
    },
  ];

  const tiles = [
    {
      title: t("Grounding, no account", "গ্রাউন্ডিং, অ্যাকাউন্ট ছাড়াই"),
      detail: t(
        "The breathing and crisis numbers work for anyone, signed in or not.",
        "শ্বাসের অনুশীলন আর সংকটের নম্বর সবার জন্য — অ্যাকাউন্ট থাকুক বা না।",
      ),
      glyph: (
        <svg viewBox="0 0 48 48" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" aria-hidden="true">
          <circle cx="24" cy="24" r="4" />
          <path d="M24 12c4 4 4 8 0 12" />
          <path d="M24 24c-4 4-4 8 0 12" />
          <path d="M14 24c-4-4-4-8 0-12" />
          <path d="M34 24c4-4 4-8 0-12" />
        </svg>
      ),
    },
    {
      title: t("You decide what is shared", "কী দেখা হবে আপনি ঠিক করেন"),
      detail: t(
        "One setting controls what your therapist sees. Change it whenever you like.",
        "একটা সেটিং দিয়ে থেরাপিস্ট কী দেখবেন তা ঠিক হয়। যখন খুশি বদলান।",
      ),
      glyph: (
        <svg viewBox="0 0 48 48" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
          <path d="M6 24s7-11 18-11 18 11 18 11-7 11-18 11S6 24 6 24Z" />
          <circle cx="24" cy="24" r="5" />
        </svg>
      ),
    },
    {
      title: t("Nothing is sent anywhere", "কিছুই পাঠানো হয় না"),
      detail: t(
        "This demo keeps everything in your browser. No ads, no accounts, no tracking.",
        "এই ডেমো সব কিছু আপনার ব্রাউজারে রাখে। কোনো বিজ্ঞাপন নেই, অ্যাকাউন্ট নেই, ট্র্যাকিং নেই।",
      ),
      glyph: (
        <svg viewBox="0 0 48 48" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
          <rect x="11" y="21" width="26" height="19" rx="3" />
          <path d="M17 21v-6a7 7 0 0 1 14 0v6" />
          <circle cx="24" cy="30" r="2" />
        </svg>
      ),
    },
  ];

  function submitWaitlist(e: React.FormEvent) {
    e.preventDefault();
    const form = e.currentTarget;
    const input = form.querySelector("input");
    if (!input) return;
    const value = input.value.trim();
    if (!value) return;
    try {
      const raw = window.localStorage.getItem(WAITLIST_KEY);
      const list: string[] = raw ? JSON.parse(raw) : [];
      if (!list.includes(value)) list.push(value);
      window.localStorage.setItem(WAITLIST_KEY, JSON.stringify(list));
    } catch {
      /* storage unavailable — still confirm to the user */
    }
    setEmail(value);
  }

  return (
    <>
      <SmoothScroll />
      <FluidCanvas />
      <div className="fs-scrim" aria-hidden="true" />
      <div className="fs-garden" aria-hidden="true" />

      <div className="fs-page">
        <section className="fs-hero">
          <header className={`fs-nav fs-reveal ${ready ? "in" : ""}`} style={{ transitionDelay: "150ms" }}>
            <a href="/" className="fs-brand">
              <svg viewBox="0 0 24 24" fill="none" aria-hidden="true">
                <path d="M2.5 9c2.5 0 2.5 4.2 5 4.2S10 9 12 9s2.5 4.2 5 4.2S19.5 9 21.5 9" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" />
                <path d="M2.5 15c2.5 0 2.5 4.2 5 4.2S10 15 12 15s2.5 4.2 5 4.2S19.5 15 21.5 15" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" opacity="0.5" />
              </svg>
              Solace
            </a>

            <nav className="fs-nav-links" aria-label={t("Primary", "প্রধান")}>
              <a className="fs-nav-link" href="#how-it-works">{t("How it works", "কীভাবে কাজ করে")}</a>
              <a className="fs-nav-link" href="#crisis">{t("Need help now", "এখনই সাহায্য")}</a>
              <a className="fs-nav-link" href="#therapists">{t("For therapists", "থেরাপিস্টদের জন্য")}</a>
              <a className="fs-nav-link" href="#privacy">{t("Privacy", "গোপনীয়তা")}</a>
            </nav>

            <div className="fs-nav-right">
              <LanguageSwitch />
              <a className="fs-pill" href="#download">{t("Get Started", "শুরু করুন")}</a>
            </div>
          </header>

          <div className="fs-center">
            <h1 className="fs-h1">
              {heading.split(" ").map((word, i, all) => (
                <span key={i}>
                  <span className={`fs-word ${ready ? "in" : ""}`} style={{ transitionDelay: `${320 + i * 85}ms` }}>{word}</span>
                  {i < all.length - 1 ? " " : null}
                </span>
              ))}
            </h1>

            <p className="fs-sub">
              {sub.split(" ").map((word, i, all) => (
                <span key={i}>
                  <span className={`fs-word sub ${ready ? "in" : ""}`} style={{ transitionDelay: `${900 + i * 22}ms` }}>{word}</span>
                  {i < all.length - 1 ? " " : null}
                </span>
              ))}
            </p>

            <div className={`fs-form-wrap fs-reveal ${ready ? "in" : ""}`} style={{ transitionDelay: "1250ms" }}>
              {email ? (
                <p className="fs-success" role="status">
                  <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                    <path d="m4 12.5 5 5L20 6.5" />
                  </svg>
                  {t("You're on the list.", "আপনি তালিকায় আছেন।")}
                </p>
              ) : (
                <form className="fs-form" onSubmit={submitWaitlist}>
                  <div className="fs-glass-bar">
                    <input
                      className="fs-input"
                      type="email"
                      required
                      placeholder={t("Enter your email", "আপনার ইমেইল")}
                      aria-label={t("Enter your email", "আপনার ইমেইল")}
                    />
                    <button className="fs-pill" type="submit">{t("Join Waitlist", "ওয়েটলিস্টে যোগ")}</button>
                  </div>
                </form>
              )}
            </div>
          </div>

          <div className="fs-hero-creature">
            <HeroCompanion state={companion} />
          </div>

          <footer className={`fs-footer fs-reveal ${ready ? "in" : ""}`} style={{ transitionDelay: "1500ms" }}>
            © 2026 Solace — engineered for deep work.
          </footer>
        </section>

        <div className="fs-below" ref={belowRef}>
          {/* A day with Solace — stepper with giant numerals */}
          <section className="fs-row fs-scroll" id="how-it-works" data-scroll="0">
            <div className="fs-row-head">
              <h2>{t("A day with Solace", "Solace-এর সঙ্গে একটা দিন")}</h2>
              <p className="fs-row-note">
                {t("Three small things. No streak to protect, and a missed day changes nothing.", "তিনটা ছোট জিনিস। কোনো ধারাবাহিকতা রক্ষা করতে হয় না, একটা দিন বাদ পড়লেও কিছু বদলায় না।")}
              </p>
            </div>

            <div className="fs-steps" role="tablist" aria-label={t("A day with Solace", "Solace-এর সঙ্গে একটা দিন")}>
              {steps.map((s, i) => (
                <button
                  key={s.name}
                  type="button"
                  role="tab"
                  aria-selected={step === i}
                  className={`fs-step ${step === i ? "is-open" : ""}`}
                  onClick={() => setStep(i)}
                  onMouseEnter={() => setStep(i)}
                  onKeyDown={(e) => {
                    if (e.key === "ArrowRight" || e.key === "ArrowDown") {
                      e.preventDefault();
                      setStep((step + 1) % steps.length);
                    }
                    if (e.key === "ArrowLeft" || e.key === "ArrowUp") {
                      e.preventDefault();
                      setStep((step - 1 + steps.length) % steps.length);
                    }
                  }}
                >
                  <span className="fs-step-num">0{i + 1}</span>
                  <span className="fs-step-label">{s.name}</span>
                  <span className="fs-step-detail">
                    <span><p>{s.detail}</p></span>
                  </span>
                </button>
              ))}
            </div>
          </section>

          {/* What this is / is not — edge-to-edge split */}
          <section className="fs-row fs-scroll" data-scroll="0">
            <div className="fs-split">
              <div>
                <span className="fs-tag">{t("What this is", "এটা কী")}</span>
                <p className="fs-big">
                  {t("A companion for the hours between sessions. A check-in, one task, and a journal you can keep to yourself.", "সেশনের মাঝের ঘণ্টাগুলোর জন্য একজন সঙ্গী। একটা চেক-ইন, একটা কাজ, আর একটা জার্নাল যা আপনি নিজের কাছে রাখতে পারেন।")}
                </p>
              </div>
              <div>
                <span className="fs-tag">{t("What this is not", "এটা কী নয়")}</span>
                <ul className="fs-strikes">
                  <li><span>{t("Not a treatment", "চিকিৎসা নয়")}</span></li>
                  <li><span>{t("Not a diagnosis", "রোগনির্ণয় নয়")}</span></li>
                  <li><span>{t("Not a replacement for a therapist", "থেরাপিস্টের বদলি নয়")}</span></li>
                  <li><span>{t("Not a crisis service", "সংকটকালীন সেবা নয়")}</span></li>
                </ul>
              </div>
            </div>
          </section>

          {/* Safety — tiles with drawn glyphs */}
          <section className="fs-row fs-scroll" data-scroll="0">
            <div className="fs-row-head">
              <h2>{t("Safety and privacy", "নিরাপত্তা ও গোপনীয়তা")}</h2>
              <p className="fs-row-note">
                {t("Tap a tile to read more.", "আরও পড়তে একটি টাইলে ট্যাপ করুন।")}
              </p>
            </div>

            <div className="fs-tiles">
              {tiles.map((tileItem, i) => (
                <button
                  key={tileItem.title}
                  type="button"
                  aria-expanded={tile === i}
                  className={`fs-tile ${tile === i ? "is-open" : ""}`}
                  onClick={() => setTile(tile === i ? null : i)}
                  onMouseEnter={() => setTile(i)}
                >
                  <span className="fs-glyph">{tileItem.glyph}</span>
                  <span className="fs-tile-title">{tileItem.title}</span>
                  <span className="fs-tile-detail">
                    <span><p>{tileItem.detail}</p></span>
                  </span>
                </button>
              ))}
            </div>
          </section>

          {/* Download — statement + release panel */}
          <section className="fs-row fs-scroll" id="download" data-scroll="0">
            <div className="fs-cols">
              <div className="fs-col-label">
                <p className="fs-statement">{t("The app is coming.", "অ্যাপটা আসছে।")}</p>
                <p className="fs-col-lead">
                  {t("For iOS and Android. One email when it lands.", "iOS আর Android-এর জন্য। ছাড়ার সঙ্গে সঙ্গে একটি ইমেইল।")}
                </p>
              </div>

              <div className="fs-col-body">
                <div className="fs-panel">
                  <div className="fs-release-row">
                    <span className="fs-release-icon" aria-hidden="true">
                      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" strokeLinejoin="round">
                        <rect x="7" y="2.5" width="10" height="19" rx="2.5" />
                        <path d="M11 18.5h2" />
                      </svg>
                    </span>
                    <span className="fs-release-name">iOS</span>
                    <span className="fs-release-state">
                      <span className="fs-pulse" aria-hidden="true" />
                      {t("App Store — soon", "অ্যাপ স্টোর — শীঘ্রই")}
                    </span>
                  </div>

                  <div className="fs-release-row">
                    <span className="fs-release-icon" aria-hidden="true">
                      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7" strokeLinecap="round" strokeLinejoin="round">
                        <path d="M5 3.5 14 12 5 20.5V3.5Z" />
                        <path d="M14 12h5" />
                      </svg>
                    </span>
                    <span className="fs-release-name">Android</span>
                    <span className="fs-release-state">
                      <span className="fs-pulse" aria-hidden="true" />
                      {t("Play Store — soon", "প্লে স্টোর — শীঘ্রই")}
                    </span>
                  </div>

                  <div className="fs-panel-form">
                    {email ? (
                      <p className="fs-success" role="status">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                          <path d="m4 12.5 5 5L20 6.5" />
                        </svg>
                        {t("You're on the list.", "আপনি তালিকায় আছেন।")}
                      </p>
                    ) : (
                      <form className="fs-form" onSubmit={submitWaitlist}>
                        <div className="fs-glass-bar">
                          <input
                            className="fs-input"
                            type="email"
                            required
                            placeholder={t("Enter your email", "আপনার ইমেইল")}
                            aria-label={t("Enter your email", "আপনার ইমেইল")}
                          />
                          <button className="fs-pill" type="submit">{t("Join Waitlist", "ওয়েটলিস্টে যোগ")}</button>
                        </div>
                      </form>
                    )}
                    <p className="fs-panel-note">
                      {t("One email, when it ships. No ads, no tracking.", "ছাড়ার সঙ্গে সঙ্গে একটি ইমেইল। কোনো বিজ্ঞাপন নেই, ট্র্যাকিং নেই।")}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </section>

          {/* For therapists — label + spec list */}
          <section className="fs-row fs-scroll" id="therapists" data-scroll="0">
            <div className="fs-cols">
              <div className="fs-col-label">
                <h2>{t("For therapists", "থেরাপিস্টদের জন্য")}</h2>
                <span className="fs-chip">
                  <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                    <rect x="4" y="10" width="16" height="10" rx="2" />
                    <path d="M8 10V7.5a4 4 0 0 1 8 0V10" />
                  </svg>
                  {t("Invite only", "শুধু আমন্ত্রণে")}
                </span>
              </div>

              <div className="fs-col-body">
                <dl className="fs-spec-list">
                  <div>
                    <dt>{t("A directory of patients", "রোগীর তালিকা")}</dt>
                    <dd>{t("No. Therapists are invited to work they already hold.", "না। থেরাপিস্টদের আমন্ত্রণ দেওয়া হয় কাজের জন্য যা তারা আগে থেকেই করেন।")}</dd>
                  </div>
                  <div>
                    <dt>{t("Matching", "মিলিয়ে দেওয়া")}</dt>
                    <dd>{t("Never. No algorithm stands between you and a person.", "কখনো না। মানুষের মাঝে কোনো অ্যালগরিদম নেই।")}</dd>
                  </div>
                  <div>
                    <dt>{t("The dashboard", "ড্যাশবোর্ড")}</dt>
                    <dd>{t("A tool for work you already hold. Your judgment comes first.", "আপনি যে কাজ ইতিমধ্যে ধরে আছেন, তার জন্য একটি হাতিয়ার। আপনার বিচার আগে।")}</dd>
                  </div>
                </dl>
                <div className="fs-actions fs-in-col">
                  <a className="fs-text-link" href="#download">
                    {t("Join the waitlist", "ওয়েটলিস্টে যোগ দিন")}
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                      <path d="M5 12h14M13 6l6 6-6 6" />
                    </svg>
                  </a>
                </div>
              </div>
            </div>
          </section>

          {/* Privacy — spec rows */}
          <section className="fs-row fs-scroll" id="privacy" data-scroll="0">
            <div className="fs-row-head">
              <h2>{t("Privacy", "গোপনীয়তা")}</h2>
              <p className="fs-row-note">{t("Four lines, no asterisks.", "চারটি লাইন, কোনো তারকা ছাড়াই।")}</p>
            </div>
            <div className="fs-spec">
              <div className="fs-spec-row">
                <span className="fs-spec-key">{t("What your therapist sees", "থেরাপিস্ট যা দেখেন")}</span>
                <span className="fs-spec-val">{t("One setting decides, and you can change it whenever you want.", "একটি সেটিং ঠিক করে, আপনি যেকোনো সময় বদলাতে পারেন।")}</span>
              </div>
              <div className="fs-spec-row">
                <span className="fs-spec-key">{t("Access log", "অ্যাক্সেস লগ")}</span>
                <span className="fs-spec-val">{t("Shows exactly when a summary was viewed.", "কখন সারাংশ দেখা হয়েছে, তা স্পষ্ট দেখায়।")}</span>
              </div>
              <div className="fs-spec-row">
                <span className="fs-spec-key">{t("Advertising", "বিজ্ঞাপন")}</span>
                <span className="fs-spec-val">{t("None. No ads, no accounts, no tracking.", "কোনোটিই নয়। কোনো বিজ্ঞাপন নেই, অ্যাকাউন্ট নেই, ট্র্যাকিং নেই।")}</span>
              </div>
              <div className="fs-spec-row">
                <span className="fs-spec-key">{t("This demo", "এই ডেমো")}</span>
                <span className="fs-spec-val">{t("Sends nothing anywhere. Everything stays in your browser.", "কোথাও কিছু পাঠায় না। সব কিছু আপনার ব্রাউজারেই থাকে।")}</span>
              </div>
            </div>
          </section>

          {/* Crisis — giant number band */}
          <section className="fs-row fs-crisis fs-scroll" id="crisis" data-scroll="0">
            <div>
              <p className="fs-crisis-title">{t("Need help right now?", "এই মুহূর্তে সাহায্য দরকার?")}</p>
              <span className="fs-crisis-number">
                <a href="tel:+8809612119911" aria-label={t("Call Kaan Pete Roi", "কান পিতে রই-কে কল করুন")}>+880 9612-119911</a>
              </span>
              <p className="fs-crisis-note">
                {t("Kaan Pete Roi — every day, 3:00 PM to 3:00 AM, no holidays. Verified October 2026. For immediate danger, call 999.", "কান পিতে রই — প্রতিদিন, দুপুর ৩টা থেকে রাত ৩টা, ছুটিবিহীন। অক্টোবর ২০২৬-এ যাচাই করা। সঙ্গে সঙ্গে বিপদ হলে ৯৯৯-এ কল করুন।")}
              </p>
            </div>
            <div className="fs-crisis-actions">
              <a className="fs-call fs-call-primary" href="tel:+8809612119911" aria-label={t("Call Kaan Pete Roi", "কান পিতে রই-কে কল করুন")}>
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                  <path d="M5 4h3l2 5-2.5 1.5a12 12 0 0 0 5 5L14 13l5 2v3a2 2 0 0 1-2.2 2A16 16 0 0 1 3 6.2 2 2 0 0 1 5 4Z" />
                </svg>
                {t("Call Kaan", "কানকে কল করুন")}
              </a>
              <a className="fs-call fs-call-secondary" href="tel:999" aria-label={t("Call emergency services", "জরুরি সেবা কল করুন")}>
                {t("Call 999", "৯৯৯-এ কল")}
              </a>
            </div>
          </section>

          <section className="fs-closing fs-scroll" data-scroll="0">
            <p>{t("A companion, not a replacement.", "একজন সঙ্গী, বদলি নয়।")}</p>
          </section>
        </div>
      </div>
    </>
  );
}
