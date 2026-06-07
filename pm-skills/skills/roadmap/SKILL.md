---
name: roadmap
description: Builds or updates a product roadmap from a charter, PRD, backlog, or priority list. Sequences initiatives into themes and time horizons with honest confidence levels and dependencies. Supports Now/Next/Later, quarterly, and outcome-based views. Use to communicate intent and sequence — not to plan a sprint.
argument-hint: <charter, PRD, backlog, or priority list>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Communicates intent and sequence — what's coming, in roughly what order, and why — without pretending distant work has firm dates. Near-term is firm; far-term is directional. It can frame the roadmap around features or, better, around the outcomes each bet is meant to produce.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What should the roadmap cover — paste the charter, PRD, or initiative list. Do you want Now/Next/Later, quarterly, or an outcome-based view, and over what horizon?"*

---

## What to gather first

| Input | Required? | Notes |
|---|---|---|
| Initiatives / themes | Yes | What could be built |
| Goals / priorities | Yes | What matters most and why |
| Horizon + format | No | Now/Next/Later (default), quarterly, or outcome-based |
| Capacity / constraints | No | Team size, fixed deadlines |
| Dependencies | No | What must precede what |

If priorities aren't given, ask for the top business goal — a roadmap without a priority signal is just a list.

## Outcome vs. feature framing
A feature roadmap lists what you'll build. An outcome roadmap states the result you're chasing ("cut time-to-first-value in half") and treats features as hypotheses about how to get there — which keeps you honest when a feature doesn't move the metric. Prefer outcome framing where you can.

---

## Output Template

### [Product] Roadmap
**Date:** [Today] | **Horizon:** [e.g. next 2 quarters] | **Confidence:** Near-term firm, later directional

#### Roadmap goal
[One sentence: the outcome this roadmap is sequenced to achieve.]

#### Now / Next / Later

**Now (committed — in progress or next up)**

| Initiative | Outcome / theme | Why now | Confidence |
|---|---|---|---|
| [Name] | [Target outcome] | [Priority driver] | High |

**Next (planned — sequenced, not yet committed)**

| Initiative | Outcome / theme | Depends on | Confidence |
|---|---|---|---|
| [Name] | [Target outcome] | [Now item] | Medium |

**Later (directional — under consideration)**

| Initiative | Outcome / theme | Open question | Confidence |
|---|---|---|---|
| [Name] | [Target outcome] | [What must be true] | Low |

*(For a quarterly view, swap the three buckets for Q1 / Q2 / Q3 and keep the same fields.)*

#### Dependencies & sequencing
- [Initiative X must precede Y because…]

#### Not now
- [Explicitly parked — with the reason]

#### Assumptions
- [assumed] [Anything inferred about capacity, priority, or timing]
