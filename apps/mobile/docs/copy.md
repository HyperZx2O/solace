# Solace — Copy Rules (draft for Phase 5 review)

> Phase 0 task: reviewed against spec 6.7, 11.5, 12.3 and plan Global Rules 6, 15. Final Bangla wording requires the therapist/mentor review (spec Issues 24, 25) — every Bangla string stays `[REVIEW-PENDING]` until then.
>
> Every user-visible string lives in `lib/l10n/app_en.arb` and `app_bn.arb`. No copy in widgets.

## The two registers

| Register | Audience | Voice | Never |
|---|---|---|---|
| Patient (warm) | Patients | "How are you doing today?" — person, not behaviour; low-pressure; optional-feeling | guilt, watching/implying tracking, streaks, blame, clinical jargon, raw scores |
| Therapist (direct) | Therapists | Clear, factual, time-stamped | warmth comparable to patient copy; reassurance; anything twice as long as needed |
| Crisis (calm-direct) | Patient in crisis | Short sentences, present tense, one action per line | decorative language, reassurance that nobody verified, technical excuses |

Registers never mix in one string or one screen.

## Hard copy rules

1. **"Notified" only when verified.** The phrase "Your therapist has been notified" may appear only when the mapped server state is `delivered` or later. Before that: `alert.patient.connecting` wording ("We're reaching your therapist now" — never claims arrival). A test walks the whole state→copy map checking the word "notified" appears in no key mapped to a pre-`delivered` state.
2. **No silent success.** If action success is unknown, say so: "The app can't reach your care team right now. These numbers connect you directly to support." Never claim a handoff that did not confirm.
3. **Numbers over promises.** The crisis screen always shows the numbers and "Here is a number you can call right now" regardless of app state.
4. **No stage language.** No "Stage", no level numbers, no phase names anywhere in patient copy. Placement wording is "your starting point will adjust as the app learns more about you."
5. **Offline is a state, not an error.** "You're offline right now. Your safety plan and crisis resources are still available below." Dimmed: "This needs a connection. Your grounding tools are available now." Sync failure: "Couldn't save your entries. We'll try again shortly."
6. **Restrictions are protective, not punitive.** Explain in advance; never use "locked", "blocked", "banned" in patient copy about features — "not available right now" with the reason and what stays open.
7. **Notification limits (spec 6.7):** <10 words push, <30 words body, address the person, never imply observation ("we noticed", "detected" — forbidden on the patient side), max-one-per-type-per-day copy never contradicted by the UI. Lock-screen public text: "Solace: you have a message" shape only.
8. **Two equal choices are visually and textually equal.** Journal access request and consent prompts: Accept/Decline identical in size, colour and tone; decline copy never implies wrongdoing.
9. **Journal privacy point-of-choice** (before writing): *"Your therapist won't see this, but the app still scans for safety signals to protect you."* — for the Recovery Journal.
   `[COPY-BLOCKED]` Personal Journal point-of-choice wording depends on spec 22.2 conflict #4 (does safety scanning cover the Personal Journal?). Neutral interim wording: "This journal stays between you and the app. You can change this anytime." Blocked until the owner resolves the conflict and records it. No patient may be promised scanning behaviour the system hasn't decided on.
10. **Errors never show raw codes.** Unknown → "Something went wrong. Try again." Known codes map to copy keys (Phase 5 mapper). Stack traces: never.
11. **Deletion honesty.** Two-step delete summary states exactly: what goes immediately, what within 30 days, crisis logs kept 24 months, consent records kept indefinitely. No euphemisms ("your data is safely removed").
12. **AI on therapist surfaces.** "AI draft" label + the permanent non-dismissible note: "AI drafts are suggestions only. You know your patient. Review carefully before sending." Patient weekend-summary copy is neutral ("A new weekly summary is ready...") once per summary.

## Forbidden-words list (patient-facing strings and all notification text)

`stage, streak, detected, we noticed, monitored, flagged, blocked, banned, low priority, urgent*, score, percent, must, failed you, notify/notified (pre-delivered states), guaranteed, private (use "hidden from therapist"), tracked`

*except the crisis channel's therapist-directed urgency strings, which use the direct register and are audited separately.

Antidote vocabulary (use these): "right now", "still available", "your choice", "no wrong answer", "when you're ready", "you're not behind".

## Verified copy debts (tracked, none silently dropped)

| Debt | Where it bites | Resolution owner |
|---|---|---|
| Personal Journal scan wording | Journal privacy sheet | Owner a spec 22.2 #4 decision |
| Bangla rendering of every string | All l10n | Therapist/mentor review (Issues 24/25) |
| Crisis numbers + hours + verified dates cannot be placeholder | `assets/crisis/resources.json` | Named org owners, quarterly re-verify (spec 10.5) |
| Escalation-tier copy alignment | Copy map rows | Follow the server's Phase 5 state map; copy mirrors server, never the timer |
