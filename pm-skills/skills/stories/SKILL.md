---
name: stories
description: Turns a PRD, feature description, or design into structured epics and stories with clean, testable acceptance criteria. Use to break work down, scope a feature, populate a backlog, or decide what to build first. Supports user story, job story, and Why-What-Acceptance formats.
argument-hint: <PRD, feature description, or design>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Takes a feature and breaks it into epics and stories an engineer or QA can act on without chasing clarification. It groups work by user journey, writes acceptance criteria so precise they double as test cases, and surfaces every assumption as an owned open question.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste your PRD, feature description, design link, or requirements. Which story format do you want — user story, job story, or Why-What-Acceptance?"*

---

## Pick a format

| Format | Shape | Best when |
|---|---|---|
| **User story** | As a [persona], I want to [goal], so that [outcome] | Default — role-based work |
| **Job story** | When [situation], I want to [motivation], so I can [outcome] | Context matters more than role (JTBD) |
| **Why-What-Acceptance** | Why (strategic) / What (concise) / Acceptance (high-level) | Communicating intent, leaving the team room to solve |

---

## Work in four phases — wait for approval between each

### Phase 1 — Understand the input
Read everything (text, designs, data models) before forming opinions. Mentally extract personas, functional areas, data entities, integrations, and constraints.

### Phase 2 — Recommend epics
Group into 3-6 epics. Rules:
- One epic per complete user journey or major product area
- A journey is one epic even across multiple screens — screens are stories
- Never create a "General" / "Miscellaneous" epic
- Never split a journey by technical layer

**The journey test:** would a user describe this as one thing they're trying to do? If yes → one epic.

Present the proposed epics and ask before continuing.

### Phase 3 — Generate stories
One epic at a time, foundational stories first. Goal before mechanism — the title is what the user achieves; UI and API details live in acceptance criteria.

**Story template:**

> ## [Story Title]
> **As a / When** [persona or situation]
> **I want to** [goal] · **So that** [outcome]
>
> **Story points:** [1/2/3/5/8 — flag anything >8 to split]
> **Dependencies:** Blocked by / Blocks: [IDs or None]
> **Feature flag:** [name + default, or None]
> **Open questions:** [ ] [Question] | Owner | Needed by

**Acceptance criteria** — short, scannable, one testable statement per line:
- *Functional:* every observable behavior; navigation names exact destinations; display lists exact UI copy
- *Error handling:* every API call has a failure line; every empty state has a line; error messages quoted verbatim
- *Non-functional:* concrete numbers only — no "fast" or "responsive"
- *Out of scope / Permissions / Analytics:* include when they apply
- *Definition of Done:* AC passed, tests written, reviewed/merged, tested in staging, no new accessibility violations, flag configured

**Quality check before showing:** every step is one action; every rule states an exact value; every async action covers loading/success/failure; every open question has an owner and deadline; story ≤ 8 points.

### Phase 4 — Finalize
Present clean markdown ready to paste into your tracker. Create foundational stories first so dependents can reference them.

---

## Always-on rules
- Be decisive — recommend, don't dump ten options.
- Surface assumptions — anything inferred becomes an open question with a named owner.
- Never invent requirements — derive only from the input; if something's missing, ask.
- AC must be testable as written. If a criterion needs interpretation, rewrite it.
