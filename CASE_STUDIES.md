# Case studies

Selected products built and shipped (or actively in development) as part of this workspace. Each entry summarizes the problem, what was built, and where to explore the code or live product.

---

## Productivity Bingo

**Problem:** Motivation and accountability for daily habits without guilt-heavy streak mechanics.

**Approach:** Next.js app with customizable bingo boards, reward tracking, and a playful 8-bit-inspired UI. Designed for neurodivergent-friendly pacing — progress without punitive streak loss.

**Explore:** [whetherwhichwood/bingo](https://github.com/whetherwhichwood/bingo) · Live product (see portfolio site for URL)

**Stack:** Next.js, TypeScript, Tailwind, deployed on Vercel

---

## Pregnancy Companion (`baby`)

**Problem:** Expecting parents need a simple, private tracker for pregnancy milestones, tips, and progress without a cluttered commercial app.

**Approach:** Installable PWA with offline-friendly pages for weekly progress, journal, tips, and sneak-peek content. Mobile-first, calm visual design.

**Explore:** [whetherwhichwood/baby](https://github.com/whetherwhichwood/baby)

**Stack:** Vanilla HTML/JS PWA, service worker caching, deployable as static site

---

## The Snack Gospel

**Problem:** Curated international snacks are hard to discover and buy in one place with a distinct brand voice.

**Approach:** Next.js marketplace with product catalog, Stripe Checkout, and retro-chic branding. Built for direct-to-consumer sales with room to expand to multi-vendor.

**Explore:** [whetherwhichwood/thesnackgospel](https://github.com/whetherwhichwood/thesnackgospel) · [thesnackgospel.com](https://thesnackgospel.com)

**Stack:** Next.js, TypeScript, Stripe, Tailwind

---

## Portfolio & content library

**Problem:** A single place to present product work, writing, and project context for hiring and collaboration.

**Approach:** Next.js portfolio with unified content library, work section linking to case studies and repos, and copy tuned for product/PM audience.

**Explore:** [whetherwhichwood/website](https://github.com/whetherwhichwood/website)

**Stack:** Next.js, App Router, content-driven pages

---

## VelocityDrop

**Problem:** Gaming groups want on-demand game servers without running their own infrastructure or paying flat monthly hosting.

**Approach:** Discord bot + token-based billing + operator dashboard + Docker orchestration. Spin up servers (starting with Valheim) from slash commands; pay per use.

**Explore:** [whetherwhichwood/velocitydrop](https://github.com/whetherwhichwood/velocitydrop) · Marketing site deployable from `site/`

**Stack:** Node.js monorepo — Discord bot, REST API, Next.js dashboard & marketing site, Prisma, PostgreSQL, Docker

**Status:** In development — core architecture in place; production infra and game catalog expansion ongoing.

---

## How these relate to `tools/`

This repository holds **PM skill snapshots** (reusable frameworks) and this **case study index** (applied product work). Application code for the products above lives in their own GitHub repositories — linked here for navigation, not duplicated.

For questions or collaboration: [griffinbaker.com](https://griffinbaker.com)
