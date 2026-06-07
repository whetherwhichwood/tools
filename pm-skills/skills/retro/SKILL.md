---
name: retro
description: Facilitates a sprint retrospective or turns raw retro notes into a structured, action-oriented write-up. Surfaces what went well and what didn't, groups feedback into themes, and produces prioritized action items with owners and deadlines. Use after a sprint or release.
argument-hint: <sprint name + retro notes, or "plan a retro">
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Helps a team reflect and actually improve. It either plans a retro (picks a format and prompts) or synthesizes raw notes into themes plus owned, dated action items — keeping the focus on what to change next, not assigning blame.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Are you planning a retro or writing one up? For a write-up, paste the team's notes. For planning, tell me the sprint and team size."*

---

## Two modes

| Mode | When | Output |
|---|---|---|
| **Facilitate** | Before the session | Format + prompts + agenda |
| **Synthesize** | After — have raw notes | Themes + prioritized actions |

If raw notes are present, go straight to Synthesize.

## Formats (pick one)
- **Start / Stop / Continue** — what to begin, end, and keep doing
- **4Ls** — Liked / Learned / Lacked / Longed For
- **Sailboat** — Wind (propels), Anchor (holds back), Rocks (risks), Island (goal)

---

## Mode 1 — Facilitate

### Retro Plan — [Sprint]
**Duration:** [e.g. 60 min] | **Team:** [N] | **Format:** [chosen format]

**Goal:** Surface what to change next sprint — not to assign blame.

**Agenda:** set the stage (5 min) → gather input by format (20 min) → group into themes and discuss (20 min) → decide actions and owners (15 min).

**Prompts:** [The questions for the chosen format.]

---

## Mode 2 — Synthesize

### Retrospective — [Sprint]

#### Sprint snapshot
- Sprint goal: achieved / partially / missed
- Velocity vs. commitment: [over / under / on]
- Prior retro actions: [done? carry over?]

#### Themes
Group the raw feedback into a few themes; note sentiment (frustration, energy, confusion).
- **[Theme]:** [What the team said, with frequency/sentiment.]

#### What went well
- [Keep doing this]

#### What didn't
- [Root cause, not just the symptom]

#### Action items

| Priority | Action | Owner | Deadline | Success signal |
|---|---|---|---|---|
| High | [Specific, doable change] | [Name] | [Date] | [How we'll know it worked] |

Keep actions few and real — three owned actions beat ten that nobody does.
