<p align="center">
  <img src="docs/preview.jpg" alt="Solace landing page" width="100%" />
</p>

<h1 align="center">Solace</h1>

<p align="center">
  <em>Your therapist works with you once a week. We work with you every day.</em>
</p>

<p align="center">
  <a href="#preview">Preview</a> ·
  <a href="#what-it-is">What it is</a> ·
  <a href="#features">Features</a> ·
  <a href="#quick-start">Quick start</a> ·
  <a href="#project-structure">Structure</a> ·
  <a href="#how-it-works">How it works</a> ·
  <a href="#design-system">Design system</a> ·
  <a href="#accessibility">Accessibility</a> ·
  <a href="#privacy">Privacy</a> ·
  <a href="#deployment">Deployment</a> ·
  <a href="#license">License</a>
</p>

---

## Preview

<p align="center">
  <img src="docs/preview-mobile.jpg" alt="Solace on mobile" width="300" />
</p>

The landing page is one immersive dark hero. A full-bleed WebGL fluid simulation (ink in water)
sits behind the whole page, the copy runs down a centred column, and everything below the fold is
set on a full-width typographic grid, with no cards and no boxes.

---

## What it is

**Solace** is a trauma-recovery companion app, and a public landing site for it.

This repository is a monorepo. `apps/landing` holds the marketing site, a single page that
explains what Solace is, keeps the safety promises easy to check, puts the crisis line one tap
away and collects waitlist sign-ups. `apps/mobile` holds the Flutter app, Android first.
`packages/design-tokens` holds the shared palette, type scale, spacing and motion values.

> **Solace is a companion, not a replacement for your therapist.**
> It is not a treatment, not a diagnosis, not a replacement for a therapist, and not a crisis
> service. The crisis numbers on this page are for real and always available.

### Design thesis

The page is a translation of Solace's original botanical design language into a dark, fluid
system:

| Original (light, botanical) | Current (dark, fluid) |
| --- | --- |
| Warm paper ground, ink-green type | Near-black `#04050c` with the shader behind it |
| The creature as the emotional anchor | Same creature, re-skinned for dark, living in the hero |
| 42px garden grid | Same grid, laid over the ink at ~5% opacity |
| Fraunces + humanist sans | Fraunces restored as an accent face only, Onest for UI and body |
| Leaf-shaped corners, paper-cut shadows | Same asymmetric radii, same hard offset shadows |
| Sage / clay / peach / lavender palette | Same palette, repurposed as the accent system |

One rule holds it together. The fluid provides the stage, and the botanical system supplies the
texture and the voice.

---

## Features

- A full-bleed WebGL fluid simulation, an ink solver running on the GPU. It bursts on load, then
  an invisible cursor orbits the centre forever, painting colour. Your pointer stirs it too.
  WebGL 2, with a WebGL 1 fallback.
- Word-by-word reveals for the headline and sub-line, with a slower stagger for the header, the
  form and the footer.
- An interactive stepper for *Check in*, *One task* and *Journal*. It is a real tab list, so arrow
  keys move between steps, and each step opens its own detail.
- Three interactive safety tiles with hand-drawn SVG glyphs that expand on click or hover.
- The companion creature from the original app, re-skinned for dark. Its eyes follow the pointer,
  and its mood follows what you do: `rest`, then `calm` once you pick a step, `low` at the journal
  step, `joyful` after you join the waitlist.
- A waitlist form that stores your address in `localStorage` and confirms it quietly. No backend,
  no third party.
- Full English and বাংলা. A globe icon switches language, and the `lang` attribute, the font
  stack and the type scale all follow.
- A full-width 12-column content grid below the fold: label column, content column, hairline
  Solace.
- A typographic crisis band that sets the Kaan Pete Roi number as display type, with *Call Kaan*
  and *Call 999* as tap targets.
- A rem-based layout that scales proportionally from 320px to 1920px.
- App icons in `apps/landing/app/icon.svg` and `apps/landing/app/apple-icon.png`, generated from the
  header glyph.

---

## Tech stack

| Layer | Choice | Notes |
| --- | --- | --- |
| Framework | **Next.js 16.4** (App Router, Turbopack) | `apps/landing/app/` directory, server layout and client page |
| UI runtime | **React 19.2** | The landing page is a single client component |
| Language | **TypeScript 5** (`strict`) | `tsc --noEmit` is clean |
| Styling | Hand-authored CSS in `apps/landing/app/flowstate.css` | No CSS-in-JS, no utility-class dependency |
| Tailwind | v4 artifact at `apps/landing/app/globals.css` | Legacy and pre-compiled, not processed at build |
| Smooth scroll | **Lenis 1.3** | `import Lenis from "lenis"` in a client component |
| Graphics | **WebGL fluid solver** | `apps/landing/public/fluid.js`, adapted from Dobryakov's MIT project |
| Fonts | **Onest**, **Fraunces**, **Noto Sans Bengali** | Via `next/font/google`, self-hosted at build |
| Storage | `localStorage` | Language preference and waitlist emails |
| Backend | **None** | No API routes, no database, no environment variables |

---

## Quick start

### Requirements

- **Node.js 20.9 or newer**, which is what Next.js 16 asks for. Node 22 LTS is the safer pick.
- npm 10 or newer, which ships with Node 20 and 22.

### Install and run

```bash
git clone https://github.com/Anha-Khan/Aicongress.git
cd Aicongress/apps/landing
npm install
npm run dev
```

Open <http://localhost:3000>.

### Scripts

| Script | What it does |
| --- | --- |
| `npm run dev` | Development server with hot reload (Turbopack) |
| `npm run build` | Production build, prerendering `/` as static HTML |
| `npm run start` | Serves the production build |

### Type check

```bash
npx tsc --noEmit
```

---

## Project structure

```
.
├── apps/
│   ├── landing/               # Next.js landing page
│   │   ├── app/
│   │   │   ├── layout.tsx            # Fonts, metadata, root shell
│   │   │   ├── page.tsx              # The landing page (client component)
│   │   │   ├── flowstate.css         # The whole design system, hand-authored
│   │   │   ├── globals.css           # Legacy pre-compiled Tailwind v4 artifact
│   │   │   ├── icon.svg              # Favicon: the header flow-line glyph
│   │   │   └── apple-icon.png        # 180×180 iOS home-screen icon
│   │   ├── components/
│   │   │   ├── fluid-canvas.tsx      # Mounts the WebGL solver on a <canvas>
│   │   │   ├── hero-companion.tsx    # The creature, re-skinned for dark
│   │   │   ├── smooth-scroll.tsx     # Lenis bootstrap + RAF loop
│   │   │   └── register-sw.tsx       # Service-worker registration
│   │   ├── lib/
│   │   │   ├── i18n.tsx              # EN/BN store, `useI18n()`, `LanguageSwitch`
│   │   │   └── types.ts              # Language type + crisis-line constants
│   │   ├── public/
│   │   │   ├── fluid.js              # The WebGL ink solver (MIT, see header)
│   │   │   └── sw.js                 # Minimal service worker
│   │   └── package.json
│   └── mobile/                # Flutter app (Android)
├── packages/
│   └── design-tokens/         # Colour, type, spacing and motion as JSON
├── docs/                      # README preview images
├── DESIGN_SYSTEM.md           # Full token + component reference
└── README.md
```

---

## Browser support

| Browser | Support |
| --- | --- |
| Chrome / Edge (current) | Full. WebGL 2, half-float textures, `backdrop-filter` |
| Firefox (current) | Full. WebGL 2, and `backdrop-filter` works from version 103 |
| Safari 16.4+ | Full. WebGL 2, and `backdrop-filter` needs the `-webkit-` prefix, which is included |
| iOS Safari 16.4+ | Full, with shading disabled on mobile for performance |
| Older browsers | The page renders, and the canvas falls back to a static near-black backdrop |

---

## Deployment

The site is fully static and can be deployed anywhere that runs Next.js or serves static files.

### Vercel

```bash
npx vercel            # preview
npx vercel --prod     # production
```

No environment variables are required.

### Any Node host

```bash
npm run build
npm run start        # listens on $PORT (default 3000)
```

### Static export

`apps/landing/app/` contains a single prerendered route, so `output: "export"` in `next.config.ts`
produces a fully static site in `apps/landing/out/`.

---

## Roadmap

- [ ] Real store links (App Store / Google Play) once the app ships.
- [ ] Analytics, left out on purpose for now. Decide the privacy stance first.
- [ ] SEO metadata, an Open Graph image and JSON-LD for the landing page.
- [ ] Contact and clinician referral flow.
- [ ] A printed one-page crisis card generated from the same content source.

---

## Contributing

1. Fork the repository and create a branch: `git checkout -b feature/my-change`
2. Make the change, keeping the design tokens in `apps/landing/app/flowstate.css` as the single source
   of truth for colour, type, spacing and motion.
3. Verify at **320 / 375 / 414 / 640 / 768 / 1024 / 1440 / 1920px**. The layout is rem-based, so
   it has to stay proportional.
4. Run `npm run build` and `npx tsc --noEmit`.
5. Open a pull request describing the change and the before/after screenshots.

### Rules of the road

- No new runtime dependencies without discussion. The bundle is deliberately tiny.
- No analytics, trackers or third-party scripts.
- Nothing that could read or transmit visitor data.
- Crisis-line copy lives in one place (`apps/landing/lib/types.ts` plus the crisis band) and must
  stay accurate.

---

## Acknowledgements

- The WebGL fluid simulation is adapted from
  [PavelDoGreat/WebGL-Fluid-Simulation](https://github.com/PavelDoGreat/WebGL-Fluid-Simulation)
  under the MIT licence. The full notice sits in the header of `apps/landing/public/fluid.js`.
- [Lenis](https://github.com/darkroomengineering/lenis), under the MIT licence.
- Onest, Fraunces and Noto Sans Bengali, under the SIL Open Font License, via `next/font`.

---

## License

The fluid simulation in `apps/landing/public/fluid.js` is MIT licensed and attributed above. The rest
of the source has no licence yet. Add a `LICENSE` file before publishing publicly.

---

<p align="center">
  <sub>© 2026 Solace. Engineered for deep work. Not a clinical service, not a treatment, and
  not a crisis line.</sub>
</p>
