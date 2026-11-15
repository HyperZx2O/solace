# Design System — Solace

The single source of truth for Solace's visual language. This document is written to be
**read on its own**, without the source code, and to be handed to an implementation agent
(Claude, a designer, a new developer) as the brief for building the app.

**What this repo is.** A monorepo. `apps/landing` is the web landing page, `apps/mobile` is the
Flutter app, `packages/design-tokens` is the shared token source.
**Where the code lives.** `apps/landing/app/flowstate.css` holds every token and rule below;
`apps/landing/app/page.tsx` holds the composition;
`apps/landing/components/hero-companion.tsx` holds the creature;
`apps/landing/public/fluid.js` holds the background solver.

> `apps/landing/app/globals.css` is a legacy pre-compiled Tailwind v4 artifact. It is not
> processed at build time. The landing page uses only the hand-authored `fs-*` classes. Ignore
> it.

---

## 1. Thesis

> **The dark fluid is the stage. The botanical system is the texture and the voice.**

Solace is a trauma-recovery companion app. The days between therapy appointments are the
hard part, and the app exists to hold those days. The site is a single dark, immersive,
full-bleed surface. A GPU ink simulation lives behind everything, a radial scrim darkens the
middle so text stays legible, and a faint garden grid sits over the ink. Content is set on a
full-width typographic grid with hairline rules. There are no cards, no boxes, no shadows
floating in space.

> **The fluid shader is a landing-page-only effect.** It is the signature of the website. The
> app does not reproduce it, and section 13.3 explains what the app uses instead. Every other
> rule in this document applies to both.

The character in the corner is not decoration. It is the product's emotional anchor and it
behaves like a small living thing: it watches the pointer, blinks on its own, waves when you
scroll, curls up and sleeps when you go quiet, and acknowledges you when you touch it.

**Mood words:** calm, editorial, warm-dark, botanical, patient, unhurried.
**Never:** neon, playful, corporate, gamified, or clinical.

---

## 2. Colour

### 2.1 Core (night, the only theme)

| Token | Value | Use |
| --- | --- | --- |
| `--hero-base` | `#04050c` | Page and hero background, behind the shader |
| `--heading` | `#eef0f6` | Headings, bright text |
| `--body-muted` | `#b9becf` | Body copy, nav links, footer, supporting notes |
| `--on-media` | `#ffffff` | Wordmark and icons that sit on the shader |
| `--action-inverse` | `#ffffff` | Primary pill background |
| `--action-inverse-fg` | `#2f2f33` | Text on the primary pill |
| `--glass-fill` | `rgba(255,255,255,0.08)` | Glass pills, bars, tiles, cards |
| `--glass-border` | `rgba(255,255,255,0.16)` | Glass edges |
| `--hairline` | `rgba(255,255,255,0.14)` | Rules and dividers |
| `--hairline-strong` | `rgba(255,255,255,0.28)` | Stronger rule, rare |
| `--accent` | `#e0a48d` | Active states, call buttons, focus emphasis |
| `--scrim` | `rgba(4,5,12,0.46)` | Radial scrim, mid falloff |
| `--scrim-strong` | `rgba(4,5,12,0.68)` | Radial scrim, centre |
| `--scrim-soft` | `rgba(4,5,12,0.12)` | Radial scrim, edge falloff |

There is no light mode. The palette is dark-only by decision, not by omission.

### 2.2 Botanical accents (carried from the original system)

These come from Solace's first, warm, paper-based design language. They were translated, not
pasted, and they now serve as the system's texture and structural colour.

| Token | Value | Use |
| --- | --- | --- |
| `--bot-sage` | `#7f9d8b` | Structure: step numeral strokes, garden grid, creature strokes |
| `--bot-sage-deep` | `#22564d` | Reserved for light surfaces |
| `--bot-clay` | `#a86650` | Secondary emphasis |
| `--bot-peach` | `#dca58e` | Active step numerals, leaf hover |
| `--bot-lavender` | `#afa7be` | Strike-through on the "what this is not" list, low creature state |
| `--bot-butter` | `#e9dfbd` | Warm highlight |
| `--bot-leaf` | `#c3d6a9` | Joyful creature state, leaves |
| `--bot-line` | `rgba(127,157,139,0.22)` | Botanical hairline |

**Usage rule.** The core palette carries the interface. The botanical accents appear at most
once per viewport, on structure (rules, numeral strokes, the grid) and on the creature. If a
screen is more than about 5% peach or sage, it is wrong.

### 2.3 Layers

| Layer | z-index | Element | Notes |
| --- | --- | --- | --- |
| Shader | 0 | `.fs-canvas` | `position: fixed`, full viewport, behind everything |
| Scrim | 1 | `.fs-scrim` | `position: fixed`, radial gradient, darkens the centre for legibility |
| Garden grid | 1 | `.fs-garden` | `position: fixed`, 42px grid, ~5% sage, over the scrim |
| Content | 3+ | `.fs-page` and everything inside | Sits above the shader |

The scrim is a two-part background: a radial that is strongest at 50% 46% and fades out, plus
a vertical linear that darkens progressively down the page so the below-fold content stays
readable over the moving ink.

---

## 3. Typography

| Role | Face | Weights | Notes |
| --- | --- | --- | --- |
| UI and body | **Onest** | 400, 500 | Geometric humanist sans. Everything except display accents |
| Display accent | **Fraunces** | 400, 500 | Warm high-contrast serif. Used on exactly two elements: the download statement and the closing statement |
| বাংলা | **Noto Sans Bengali** | 400, 500 | Every Bengali string. **Onest and Fraunces carry no Bengali glyphs**, so this face is mandatory, not optional |

Onest and Fraunces are self-hosted at build time. Fraunces appears on two spots on purpose:
it is a seasoning, not the voice. If a new screen is being built, the default is Onest.

### 3.1 The adaptive rem grid

```css
html { font-size: 16px; }
@media (max-width: 1920px) { html { font-size: 0.833333vw; } }
@media (max-width: 1440px) { html { font-size: 1.111111vw; } }
@media (max-width: 1024px) { html { font-size: 1.5625vw; } }
@media (max-width: 640px)  { html { font-size: min(4.444444vw, 16px); } }
```

Every size in the system is in `rem`, so the whole page scales proportionally with viewport
width. At 1440px the root is 16px, at 768px it is 12px. This is the single most unusual
decision in the system and it has no native equivalent (see section 11).

### 3.2 Scale

| Element | Base (<640) | ≥640 | ≥1024 | Notes |
| --- | --- | --- | --- | --- |
| Hero `h1` | `2rem` | `3.5rem` | `5rem` | Line-height 1.1, tracking -0.02em, max-width 20/32/44rem |
| Hero sub | `1rem` | `1.1rem` | `1.2rem` | Line-height 1.5, max-width 20/32/36rem |
| Band `h2` | `1.5rem` | `2rem` | `2.75rem` | Line-height 1.1, tracking -0.02em, max-width 20ch |
| Step numeral | `clamp(3.5rem, 11vw, 8rem)` | | | Line-height 0.85, tracking -0.05em |
| Statement (Fraunces) | `clamp(2.25rem, 5.5vw, 4.5rem)` | | | Line-height 1.05, tracking -0.035em |
| Closing (Fraunces) | `clamp(1.75rem, 5vw, 3.5rem)` | | | Line-height 1.12, tracking -0.02em |
| Crisis number | `clamp(2rem, 6.5vw, 5rem)` | | | Line-height 1, tracking -0.03em, tabular numerals |
| Big statement | `1.375rem` | `1.75rem` | | Line-height 1.3, max-width 26ch |
| Section tag | `0.72rem` | | | Tracking 0.16em, uppercase, accent colour |
| Step / tile label | `1.25rem` | `1.5rem` | | Line-height 1.2 |
| Struck-through item | `1.125rem` | | | Line-height 1.3 |
| Nav link | `0.95rem` | | | |
| Body | `0.95` to `1.05rem` | | | Line-height 1.6 to 1.7 |
| Small / note | `0.8` to `0.95rem` | | | |

**Bengali overrides.** Hero `1.7 / 2.9 / 3.9rem`, line-height `1.35 / 1.3 / 1.28`, tracking `0`.
Section tags lose their uppercase and tracking drops to `0.04em`. Bengali sets wider, so every
Bengali size is pulled down roughly 25% and given looser leading.

---

## 4. Spacing and layout

- **`--gutter: clamp(1rem, 2.2vw, 2rem)`** is the margin on every edge. It is small on
  purpose. The hairline rules still run the full viewport width; only content sits on the
  gutter. This is what keeps a full-bleed layout from looking broken.
- **Hero** is a three-row grid: `auto minmax(0,1fr) auto` for nav, centred column, footer.
  The column is `min-height: 100lvh` and truly centred in the middle row.
- **Bands** (`.fs-row`) are full width with a `1px` top hairline, padding `2.75rem 0` and
  `4rem 0` at ≥640. No side padding on the band itself.
- **Band body** (`.fs-cols`) is a 12-column grid at ≥900: label occupies columns 1 to 4, body
  occupies 5 to 12, with a hairline rule above the body column.
- **Split** (`.fs-split`) is two columns at ≥768 with a vertical hairline between them.
- **Stepper and tiles** are three columns at ≥768, each cell padded `1.5rem gutter 1.75rem`
  with a vertical hairline divider between cells.
- **Crisis band** is a two-column grid at ≥900 (text left, call buttons right, bottom aligned)
  with a `3rem` gap.

### 4.1 Shape and depth

- Standard radius `1.25rem`.
- **Leaf radius** `1.25rem 3rem 1.25rem 1.25rem` on the release panel. Corners are cut by
  hand, never uniform. A secondary leaf variant is `1rem 1rem 2.5rem 1rem`.
- Pill radius `9999px` for every button, bar, badge and chip.
- **Soft blur** for glass surfaces. **Hard offset shadow** (`7px 8px 0 rgba(0,0,0,0.42)`) for the
  release panel only, so it reads as a paper cutout sitting on the ink.

---

## 5. Motion

| Token | Value |
| --- | --- |
| `--ease-entrance` | `cubic-bezier(0.2, 0, 0, 1)` |
| `--duration-fast` | `150ms` |
| Block reveal | 700ms fade plus `1.25rem` rise |
| Word reveal (heading) | 720ms, `26px` rise, `85ms` stagger between words |
| Word reveal (sub-line) | 600ms, `14px` rise, `22ms` stagger between words |
| Scroll reveal | 800ms, driven by an intersection observer, with a 2s failsafe so content is never stuck hidden |
| Creature settle | 500ms on load |
| Creature leaf breathe | 3.8s loop, joyful state only |
| Creature pet | 620ms bounce |
| Creature wave | 1.1s, three-beat |

**Rules.** Animate `transform` and `opacity` only. Never animate layout. Never bounce on UI
state. The focus ring appears instantly, never fades in. Hover is a 1px lift or a colour
shift, never both at once.

**In the app.** Every duration and easing above is reproduced exactly, and the constraint holds
as written: the app animates `transform` and `opacity` only, which maps to `Transform` and
`Opacity` in Flutter and never to a layout pass. Nothing here needs re-deciding for native.

**Reduced motion.** `prefers-reduced-motion: reduce` disables every reveal, the leaf
animation, the pet bounce and the wave. The creature still changes expression, it just does
not move. The floating leaves are hidden entirely.

---

## 6. Page structure

One page. One hero, seven bands, one closing statement.

| Order | Section | Anchor | Layout |
| --- | --- | --- | --- |
| 1 | Hero | | Nav, centred column (headline, sub-line, waitlist bar), footer line. `100lvh` |
| 2 | A day with Solace | `#how-it-works` | Section head, then the three-step stepper |
| 3 | What this is / what this is not | | Split: prose on the left, struck-through list on the right |
| 4 | Safety and privacy | | Section head, then three interactive tiles |
| 5 | The app is coming | `#download` | 12-column band: statement and lead on the left, release panel on the right |
| 6 | For therapists | `#therapists` | 12-column band: label and "Invite only" chip on the left, spec list on the right |
| 7 | Privacy | `#privacy` | Section head, then four label/value rows |
| 8 | Need help right now | `#crisis` | Crisis band: giant phone number and notes on the left, two call buttons on the right |
| 9 | Closing statement | | Centred Fraunces line: "A companion, not a replacement." |

### 6.1 The hero

- **Nav**: wordmark with a flow-line glyph on the left, a centred glass pill of four links
  (shown from 640px up, absolutely centred), and on the right a globe icon button plus a
  solid white "Get Started" pill.
- **Headline**: the single most important line on the page. Short, declarative, no more than
  five words.
- **Sub-line**: one or two sentences carrying the argument.
- **Waitlist bar**: a glass pill containing an email input and a solid white "Join Waitlist"
  button. Submitting swaps the bar for a quiet confirmation pill. No backend: the address is
  written to local storage.
- **Footer line**: a single centred line, "© 2026 Solace — engineered for deep work."

### 6.2 The stepper (interactive)

Three steps: `01 Check in`, `02 One task`, `03 Journal`.

- The numeral is `01` / `02` / `03` set enormous, transparent with a 1px sage stroke. The
  **selected** step fills the numeral peach and drops the stroke.
- The selected step expands to reveal a one-line detail, animated with a grid-row height
  transition.
- Semantics: `role="tablist"` with `role="tab"` children, `aria-selected` on the active one,
  left and right arrow keys move between steps.
- Hovering a step also selects it.

### 6.3 The safety tiles (interactive)

Three tiles, each with a hand-drawn 2.75rem SVG glyph in accent colour, a title, and a
one-line detail that expands on click or hover. `aria-expanded` on each. The glyph lifts 2px
on hover.

### 6.4 The release panel

A floating glass sheet with a leaf radius and a hard offset shadow. It contains:

- Two platform rows, iOS and Android, each with a drawn device glyph, the platform name, and
  a status reading "App Store — soon" with a slow peach pulse dot. **They are status rows, not
  buttons.** They must not look pressable.
- The waitlist email field, inline.
- A reassurance line: "One email, when it ships. No ads, no tracking."

### 6.5 The crisis band

The most important band on the page and the least decorative.

- A small accent tag: "NEED HELP RIGHT NOW?"
- The Kaan Pete Roi number set as display type, `clamp(2rem, 6.5vw, 5rem)`, tabular numerals,
  linking to `tel:+8809612119911`.
- Notes: hours (every day, 3:00 PM to 3:00 AM, no holidays), verification date, and the
  emergency number 999.
- Two call buttons: a solid peach "Call Kaan" and an outlined "Call 999". The 999 button
  links to `tel:999`.

---

## 7. The companion creature

`apps/landing/components/hero-companion.tsx`. A hand-drawn SVG, `viewBox="0 0 260 190"`, originally the
mascot of Solace's first design. It is redrawn in the dark palette and it behaves like a
small animal. It is the emotional anchor of the page.

### 7.1 Anatomy

A round body with two ears, a tail, a face, sitting on a soft ground shape, with two stems
and two leaves beside it. The face is three strokes: left eye, right eye, mouth. Nothing else.

### 7.2 Mood states

| State | Body fill | Face | Trigger |
| --- | --- | --- | --- |
| `rest` | sage `rgba(127,157,139,0.30)` | Open eyes, level mouth | On arrival |
| `calm` | sage | Open eyes, level mouth | A step in the stepper is selected |
| `low` | lavender `rgba(175,167,190,0.30)`, body drops 5px and squashes to 95% | Open eyes, downward mouth | The journal step is selected |
| `joyful` | leaf `rgba(195,214,169,0.34)` | Open eyes, wide smile, leaves breathe | The waitlist was submitted |

Strokes are near-white `rgba(238,240,246,0.8)`. Ground is sage at 16% alpha. Stems and leaves
are sage at 55% and 34% alpha.

### 7.3 Behaviours

| Behaviour | Rule | Timing |
| --- | --- | --- |
| **Blink** | Eyes swap to closed lids, then back. Roughly 30% of blinks are a double blink | Every 2.6 to 5.4s, 110ms each |
| **Gaze** | The face group translates toward the pointer, measured relative to the creature, not the viewport | Continuous, max 6px horizontal, 4px vertical |
| **Hover** | Ears rotate toward the pointer, tail swishes, body scales to 1.02, leaves brighten to leaf green | 280ms |
| **Press** | A press is acknowledged: the body squashes and bounces, a leaf lifts off and floats away, the mouth becomes a wide smile | 620ms bounce, 1.5s leaf |
| **Idle nap** | After 12s with no input the body flattens, ears droop, the face dims and a "z" floats up | Checked every second |
| **Wave** | The first time the page scrolls past 40px, the whole figure bobs and tilts and a leaf swings up beside it | 1.1s, three beats |

**Waking.** Any pointer move, pointer down, key press, wheel or touch wakes it from the nap
immediately and restarts the idle timer.

**It is a real control.** The creature is a button with an accessible name ("Say hello to the
Solace companion"), a visible focus ring, and a 44px hit target. The touch target uses
`touch-action: manipulation` so a tap does not wait for the scroll gesture.

### 7.4 Placement

Bottom left of the hero, `2.5rem` from the edges (`3.25rem` at ≥640). Width `8.5rem`
(`6.5rem` and 50% opacity below 560px, where the footer text would collide). It sits above the
garden grid and below the nav.

---

## 8. The fluid background

> **Landing page only.** This section describes the website's background. The Android app does
> not ship the shader. See section 13.3 for what the app uses instead.

`apps/landing/public/fluid.js`. A GPU ink solver running full-bleed behind the whole page. It is
the "stage". It is derived from Pavel Dobryakov's MIT-licensed WebGL fluid simulation, adapted
in six specific ways.

### 8.1 Configuration

| Parameter | Value | Meaning |
| --- | --- | --- |
| Simulation resolution | 200 | Velocity field grid |
| Dye resolution | 512 | Colour field grid |
| Density dissipation | 0.958 | How fast colour fades. High, so trails stay alive |
| Velocity dissipation | 0.96 | How fast motion fades |
| Pressure dissipation | 0.8 | Pressure decay per solve |
| Pressure iterations | 20 | Jacobi iterations, the main quality lever |
| Curl | 42 | Vorticity confinement, the marbled swirl |
| Splat radius | 0.22 | Size of each ink blob |
| Back colour | `rgb(4,5,12)` | Matches `--hero-base` exactly |

### 8.2 Behaviour

- **Load burst**: 34 splats fire immediately on start, then 8 more waves of 10 to 19 splats
  drain one per frame. The page opens in a flash of colour.
- **Auto-cursor**: 700ms after load, an invisible cursor begins orbiting the centre forever.
  Radius 300px, capped at 35% of the smaller canvas dimension, breathing between 72% and 100%
  of that radius. It paints a new colour every 120ms.
- **Ink colour**: hue between 0.5 and 0.92 (cyan through blue and violet into magenta),
  saturation 0.95, value 1.0. Load-burst splats are multiplied 2.4x, auto-cursor splats 1.1x.
- **Pointer**: the visitor's pointer stirs the ink. Because the canvas sits behind content with
  `pointer-events: none`, input is read from window events and mapped into canvas space.
- **Degradation**: shading is disabled on mobile and when half-float linear filtering is
  unavailable; WebGL 1 falls back to a hand-written bilerp in the advection shader.

### 8.3 Rendering cost

The solver runs at display refresh rate and redraws only on resize. The canvas is behind
content and never intercepts input.

---

## 9. Interaction inventory

Every interactive element, its states, and its target size.

| Element | States | Notes |
| --- | --- | --- |
| Primary pill (white) | default, hover, focus-visible | 2.5rem tall, 2.75rem at ≥640. Hover: 85% white, 1px lift |
| Secondary pill (outlined) | default, hover, focus-visible | Glass border, muted text |
| Icon button | default, hover, focus-visible | 2.75rem square circle, glass fill |
| Text link | default, hover, focus-visible | Underlined in accent colour, 5px offset |
| Chip | default | Pill, glass fill, accent icon |
| Step | default, hover, selected, focus-visible | Numeral fills accent when selected |
| Tile | default, hover, expanded, focus-visible | Detail expands, glyph lifts |
| Creature | default, hover, pressed, focus-visible | Also carries its own mood states |
| Email input | default, focus, invalid | Transparent, no border, placeholder in muted |
| Platform row | default | **Not interactive.** Status only, with a slow pulse |
| Call button | default, hover, focus-visible | Peach fill for the primary, outlined for 999 |

Every target is at least 44 by 44 pixels. Focus is a 2px ring at 3px offset, never animated,
and it appears instantly.

---

## 10. Accessibility

- Skip link to the content region, visible on focus.
- `:focus-visible`: 2px ring, 3px offset, colour `#ffffff` at 75% on dark.
- Every interactive target is at least 44 by 44 pixels.
- The stepper is a `tablist` with arrow-key navigation and `aria-selected`.
- The tiles use `aria-expanded`.
- The waitlist confirmation is a `role="status"` live region.
- The creature is a named button.
- The `lang` attribute tracks the active language, so screen readers switch voice.
- `prefers-reduced-motion` is fully honoured, and the creature still changes expression.
- Body text is `#b9becf` on `#04050c`, a contrast ratio of 11:1. Headings are `#eef0f6`, 17.9:1.
  The accent `#e0a48d` is 9.6:1 on the base, so it passes for text as well as for non-text
  emphasis.
- The fluid sits under a scrim so no text ever lands on raw ink.

---

## 11. Local storage and content

| Key | Value | Purpose |
| --- | --- | --- |
| `Solace.language` | `"en"` or `"bn"` | Language preference |
| `Solace.waitlist` | JSON array of email strings | Waitlist sign-ups |

Both are read and written defensively. The page works when storage is blocked.

**Copy rules.** The voice is plain, warm and unhurried. It never sells. It states what the
product is not as prominently as what it is. "Not a treatment. Not a diagnosis. Not a
replacement for your therapist. Not a crisis service." The crisis band is never styled
playfully, never sits below a marketing band, and its call buttons are the only saturated
peach on the page.

---

## 12. Constraints

These are not preferences. Breaking them breaks the product.

1. **No backend.** Nothing is sent anywhere. The waitlist lives in the visitor's own browser.
2. **No analytics, no trackers, no third-party scripts, no cookies.**
3. **No accounts, no ads.**
4. **Both languages ship.** Any new string needs an English and a Bengali version, and
   Bengali needs the Noto Sans Bengali face.
5. **Every string is translated.** No hard-coded copy in components.
6. **The app may not read or transmit visitor data.** The landing page is the model.
7. **Dark only.** Do not add a light theme without changing the thesis.
8. **Fraunces is a seasoning.** Two elements on the page. Any more and it stops working.
9. **Crisis copy must stay accurate and in one place.**

---

## 13. Translating this system to a native app

Notes for whoever builds the Android, iOS, macOS, Windows or Linux client. This section is
guidance, not a decision. The decisions still need making.

### 13.1 Carries over unchanged

- Every colour value, as a literal in the theme. The palette is platform-agnostic.
- The type roles and their relative sizes, translated to `sp`.
- The three font families, with the same division of labour.
- The leaf radii, hairline weights, and the hard offset shadow.
- Every motion duration and easing, in milliseconds and as a cubic bezier.
- The creature SVG, which is already a clean vector. It needs no redrawing, only re-animation.
- The copy, the structure, the anchors and the information hierarchy.

### 13.2 Needs translation

| Web concept | Native equivalent | Note |
| --- | --- | --- |
| `--gutter` | `dp` | `clamp(1rem, 2.2vw, 2rem)` becomes a fixed `dp` value per size class. Viewport-proportional margins are not a native pattern |
| The adaptive rem grid | A `Typography` scale in `sp` plus a spacing scale in `dp` | The web version scales the whole page with viewport width. Native does not. This is a real downgrade, and it needs a decision rather than a translation |
| `rem` | `sp` for type, `dp` for layout | `sp` respects the user's font-size setting, which the web version does not. Keep it |
| `backdrop-filter: blur()` | `Modifier.blur` or `RenderEffect` (API 31+) | Below API 31, fall back to a solid `--glass-fill` equivalent |
| `html[lang]` | App locale | Drives the font stack and the type-scale overrides |
| `localStorage` | DataStore or a plain file | Same two keys, same defensive behaviour |
| IntersectionObserver reveals | `LazyListItem` or a scroll-state hook | Keep the failsafe so content is never stuck hidden |
| `100lvh` | Window insets plus the screen height | The hero is a three-row grid: chrome, centred content, footer. Edge-to-edge needs inset handling |

### 13.3 The fluid background does not ship in the app

**Decided: the app does not reproduce the shader.** The solver stays on the landing page. It is
the website's signature, not a requirement of the product.

For the record, the reason it is awkward to port. The web solver is **multi-pass**: advect the
velocity field, compute curl, apply vorticity, solve pressure over 20 Jacobi iterations,
subtract the pressure gradient, then advect the dye. That needs ping-pong framebuffers. AGSL
`RuntimeShader`, the natural Android tool, is **single-pass** and cannot run a multi-pass
solver. The options that existed were: port it to OpenGL ES 3.0 or Vulkan directly, build a
single-pass AGSL approximation that fakes marbling from a scrolling noise field, or drop the
shader for a static gradient.

**What the app does instead.** The dark ground is a solid `--hero-base` field with the same
radial scrim and the same faint garden grid, both of which are cheap to draw in Flutter and
carry the same visual weight without the GPU cost. The shader's job in the design is to make
the page feel alive and depthless, not to carry information, so the app keeps the depthless
feel and drops the movement.

If a future version wants the ink back, the honest options are a GLES or Vulkan platform view
(most work) or a single-pass approximation (cheaper, visibly different). That is a later
decision, not a blocker for the first release.

### 13.4 What to decide before implementation

1. How the rem grid becomes `sp` and `dp`. This is the one real translation decision left.
2. How the design tokens become a shared package consumed by both the site and the app, so
   there is one source of truth rather than two copies that drift. `packages/design-tokens`
   exists for this and holds the token JSON.
3. The app's platform stack beyond Android. Everything above assumes Flutter with an Android
   MVP.

---

## 14. Component reference

Class names are the web implementation. The behaviour column is what matters for a port.

| Class | Element | Behaviour |
| --- | --- | --- |
| `.fs-page` | Page shell | Sits above the shader |
| `.fs-canvas` | Shader layer | Fixed, full viewport |
| `.fs-scrim` | Scrim layer | Fixed radial plus vertical gradient |
| `.fs-garden` | Grid layer | Fixed 42px sage grid at 5% |
| `.fs-hero` | Hero | Three-row grid, 100lvh |
| `.fs-nav` `.fs-brand` | Nav | Brand left with a flow-line glyph |
| `.fs-nav-links` `.fs-nav-link` | Centre nav pill | Four links, ≥640 only |
| `.fs-nav-right` | Nav right cluster | Globe button, primary pill |
| `.fs-icon-btn` `.fs-pill` `.fs-outline` `.fs-text-link` `.fs-chip` | Controls | See section 9 |
| `.fs-center` `.fs-h1` `.fs-sub` | Hero column | Centred, word-by-word reveal |
| `.fs-form-wrap` `.fs-form` `.fs-glass-bar` `.fs-input` `.fs-success` | Waitlist | Glass bar, swaps to a status pill |
| `.fs-hero-creature` `.fs-companion` `.fs-companion-btn` | Creature | See section 7 |
| `.fs-below` `.fs-row` `.fs-row-head` `.fs-row-note` | Band shell | Full width, top hairline |
| `.fs-cols` `.fs-col-label` `.fs-col-body` `.fs-col-lead` | 12-column band body | Label 1 to 4, body 5 to 12 |
| `.fs-split` `.fs-tag` `.fs-big` `.fs-strikes` | What this is / is not | Split with a struck-through list |
| `.fs-steps` `.fs-step` `.fs-step-num` `.fs-step-label` `.fs-step-detail` | Stepper | Tab semantics, arrow keys |
| `.fs-tiles` `.fs-tile` `.fs-glyph` `.fs-tile-title` `.fs-tile-detail` | Safety tiles | Expand on click or hover |
| `.fs-panel` `.fs-release-row` `.fs-release-icon` `.fs-release-name` `.fs-release-state` `.fs-pulse` | Release panel | Status rows, not buttons |
| `.fs-panel-form` `.fs-panel-note` | Panel extras | Email field, reassurance line |
| `.fs-statement` | Download statement | Fraunces, oversized |
| `.fs-spec-list` `.fs-spec-row` `.fs-spec-key` `.fs-spec-val` | Label and value rows | Hairline separated |
| `.fs-crisis` `.fs-crisis-title` `.fs-crisis-number` `.fs-crisis-note` `.fs-crisis-actions` `.fs-call` | Crisis band | Giant number, two call targets |
| `.fs-closing` | Closing statement | Fraunces, centred |
| `.fs-reveal` `.fs-word` `.fs-scroll` | Animation hooks | Reveal, word, scroll |
| `.fs-serif` | Serif utility | Only where Fraunces is allowed |
| `.fs-leaf-radius` `.fs-leaf-radius-alt` | Shape utilities | Hand-cut corners |
| `.fs-cut` | Depth utility | Hard offset shadow |
