---
name: tech-review
description: Translates a technical brief, architecture doc, or engineering proposal into PM-readable terms — what it means for scope, timeline, and risk. Surfaces risks hidden in technical decisions and lists the right questions to ask the tech lead. Use when you receive a system design, integration spec, or stack decision.
argument-hint: <architecture doc, integration spec, or technical proposal>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Helps a non-engineer PM understand what a technical decision really means for delivery. It explains the approach in plain English, flags risks buried in the design, identifies dependencies, and gives you sharp questions to raise before you commit to a plan.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste the technical document — architecture brief, integration spec, or stack decision. Include the project name and any known constraints (timeline, team size, budget)."*

---

## Output Format

### Technical Feasibility Review

**Project:** [Name] | **Document reviewed:** [Type/title] | **Date:** [Today]

#### Document type
[Architecture proposal / Integration spec / Data model / Stack decision / Spike output / Mixed]

#### Plain-English summary
[3-5 sentences, no jargon. What's being built, how the parts connect, what it replaces or depends on.]

#### Delivery implications
- **Timeline:** [What this means for how long things take]
- **Team / skills:** [Skills or roles required]
- **Scope:** [What it adds, removes, or changes]
- **Third-party dependencies:** [External services, licenses, vendors]
- **Operational / maintenance:** [Ongoing cost of running it]

#### Risks surfaced

| # | Risk | Likelihood | Impact | Why it matters for delivery |
|---|---|---|---|---|
| R1 | [Risk] | H/M/L | H/M/L | [Note] |

**Top risk to act on now:** [R1 — one sentence.]

#### Dependencies
- [What must be true or done before this can proceed]

#### Questions for the tech lead
1. [Specific, answerable, delivery-focused question]
2. [Question]

#### Scope implications
[What this approach means for the roadmap or sprint plan. Flag anything that implies more work than is currently visible.]

#### Feasibility verdict
**[Feasible / Feasible with conditions / High risk]** — [the single most important next action for the PM.]
