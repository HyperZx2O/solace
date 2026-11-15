"use client";

import { useEffect, useRef, useState } from "react";
import { useI18n } from "@/lib/i18n";

export type CompanionState = "rest" | "calm" | "low" | "joyful";

const EYES_OPEN = {
  left: "M111 98c3-3 7-3 10 0",
  right: "M142 96c3-3 7-3 10 0",
};

const EYES_CLOSED = {
  left: "M111 100c3 2 7 2 10 0",
  right: "M142 98c3 2 7 2 10 0",
};

const MOUTHS: Record<CompanionState | "nap" | "pet", string> = {
  rest: "M128 113c4 3 8 3 12 0",
  calm: "M128 113c4 3 8 3 12 0",
  low: "M128 116c4-3 8-3 12 0",
  joyful: "M127 111c5 7 11 7 16 0",
  nap: "M129 115c3 1 6 1 9 0",
  pet: "M127 111c5 7 11 7 16 0",
};

const BLINK_MIN = 2600;
const BLINK_MAX = 5400;
const BLINK_MS = 110;
const NAP_AFTER = 12000;
const WAVE_MS = 1500;
const PET_MS = 1600;

/**
 * The original Solace creature, re-skinned for the dark hero.
 *
 * It is a real control: a button you can press. It blinks on its own, leans
 * toward the pointer, waves when the page scrolls, lifts a leaf when you press
 * it, and curls up to nap after a stretch without any input.
 */
export function HeroCompanion({ state = "rest" }: { state?: CompanionState }) {
  const { t } = useI18n();
  const faceRef = useRef<SVGGElement>(null);
  const wrapRef = useRef<HTMLButtonElement>(null);
  const timers = useRef<number[]>([]);
  const lastActivity = useRef(Date.now());
  const nappingRef = useRef(false);
  const waved = useRef(false);

  const [blinking, setBlinking] = useState(false);
  const [napping, setNapping] = useState(false);
  const [petted, setPetted] = useState(false);
  const [waving, setWaving] = useState(false);

  const later = (fn: () => void, ms: number) => {
    const id = window.setTimeout(fn, ms);
    timers.current.push(id);
  };

  useEffect(() => {
    const pending = timers.current;
    return () => pending.forEach((id) => window.clearTimeout(id));
  }, []);

  // 1 · Idle blinking, with the occasional double blink.
  useEffect(() => {
    let timeout = 0;
    const schedule = () => {
      timeout = window.setTimeout(() => {
        setBlinking(true);
        later(() => {
          setBlinking(false);
          if (Math.random() < 0.3) {
            later(() => {
              setBlinking(true);
              later(() => setBlinking(false), BLINK_MS);
            }, 190);
          }
          schedule();
        }, BLINK_MS);
      }, BLINK_MIN + Math.random() * (BLINK_MAX - BLINK_MIN));
    };
    schedule();
    return () => window.clearTimeout(timeout);
  }, []);

  // Activity tracking. Any input wakes it from the nap.
  useEffect(() => {
    const mark = () => {
      lastActivity.current = Date.now();
      if (nappingRef.current) {
        nappingRef.current = false;
        setNapping(false);
      }
    };
    const events = ["pointermove", "pointerdown", "keydown", "wheel", "touchstart"];
    events.forEach((e) => window.addEventListener(e, mark, { passive: true }));
    const check = window.setInterval(() => {
      if (!nappingRef.current && Date.now() - lastActivity.current > NAP_AFTER) {
        nappingRef.current = true;
        setNapping(true);
      }
    }, 1000);
    return () => {
      events.forEach((e) => window.removeEventListener(e, mark));
      window.clearInterval(check);
    };
  }, []);

  // Eyes follow the pointer, relative to the creature rather than the viewport.
  useEffect(() => {
    const onMove = (e: PointerEvent) => {
      const el = wrapRef.current;
      const face = faceRef.current;
      if (!el || !face) return;
      const rect = el.getBoundingClientRect();
      const cx = rect.left + rect.width / 2;
      const cy = rect.top + rect.height / 2;
      const dx = Math.max(-1, Math.min(1, (e.clientX - cx) / (rect.width * 1.5)));
      const dy = Math.max(-1, Math.min(1, (e.clientY - cy) / (rect.height * 1.5)));
      face.style.transform = `translate(${(dx * 6).toFixed(2)}px, ${(dy * 4).toFixed(2)}px)`;
    };
    window.addEventListener("pointermove", onMove, { passive: true });
    return () => window.removeEventListener("pointermove", onMove);
  }, []);

  // 7 · A wave the first time the visitor scrolls down.
  useEffect(() => {
    const onScroll = () => {
      const y = window.scrollY;
      if (y > 40 && !waved.current) {
        waved.current = true;
        setWaving(true);
        later(() => setWaving(false), WAVE_MS);
      } else if (y < 8) {
        waved.current = false;
      }
    };
    window.addEventListener("scroll", onScroll, { passive: true });
    return () => window.removeEventListener("scroll", onScroll);
  }, []);

  // 3 · A press is acknowledged.
  const pet = () => {
    lastActivity.current = Date.now();
    setPetted(true);
    later(() => setPetted(false), PET_MS);
  };

  const squint = blinking || napping || petted;
  const mouth = napping ? MOUTHS.nap : petted ? MOUTHS.pet : MOUTHS[state];

  const classes = [
    "fs-companion",
    `is-${state}`,
    squint ? "is-squint" : "",
    napping ? "is-napping" : "",
    petted ? "is-petted" : "",
    waving ? "is-waving" : "",
  ]
    .filter(Boolean)
    .join(" ");

  return (
    <button
      ref={wrapRef}
      type="button"
      className="fs-companion-btn"
      onClick={pet}
      aria-label={t("Say hello to the Solace companion", "Solace-এর সঙ্গীকে সম্বোধন জানান")}
    >
      <span className={classes}>
        <svg viewBox="0 0 260 190" role="presentation">
          <path className="scene-ground" d="M27 154c49-21 157-22 207 1-40 23-164 24-207-1Z" />
          <path className="scene-stem" d="M38 142c2-27 9-52 22-73M48 110c-12-1-20-7-24-17M51 98c12-3 20-10 25-21" />
          <path className="scene-stem" d="M222 148c-1-25-7-44-18-61M214 117c10-2 18-8 22-17" />

          <g className="fs-figure">
            <path className="creature-tail fs-tail" d="M166 113c28-10 41 3 34 18-5 11-20 8-21-2" />
            <path className="creature-body" d="M84 80c8-29 55-42 82-18 25 22 20 66-8 82-27 15-71 5-81-27-4-13-1-25 7-37Z" />

            <path className="creature-ear fs-ear fs-ear-a" d="M100 70 90 42c17 4 26 13 29 26" />
            <path className="creature-ear fs-ear fs-ear-b" d="M151 63l18-24c7 17 4 29-4 38" />

            <g className="creature-face" ref={faceRef}>
              <g className="eyes-open">
                <path d={EYES_OPEN.left} />
                <path d={EYES_OPEN.right} />
              </g>
              <g className="eyes-closed">
                <path d={EYES_CLOSED.left} />
                <path d={EYES_CLOSED.right} />
              </g>
              <path className="creature-mouth" d={mouth} />
            </g>
          </g>

          <g className="fs-pop">
            <path className="pop-leaf" d="M25 91c17-5 25 3 21 18-14 3-22-3-21-18Z" />
          </g>

          <g className="fs-wave-leaf">
            <path className="wave-leaf" d="M212 87c13-7 23-2 23 12-12 6-21 2-23-12Z" />
          </g>

          <g className="fs-zzz">
            <text x="178" y="64">z</text>
          </g>

          <path className="scene-leaf leaf-one" d="M25 91c17-5 25 3 21 18-14 3-22-3-21-18Z" />
          <path className="scene-leaf leaf-two" d="M212 87c13-7 23-2 23 12-12 6-21 2-23-12Z" />
        </svg>
      </span>
    </button>
  );
}
