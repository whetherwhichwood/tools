---
name: stakeholder
description: Two modes — write an audience-appropriate status update, or map stakeholders on a power/interest grid and build a communication plan. Use when updating a sponsor or exec, or when planning who to tell what before a launch or big change.
argument-hint: <status/report + audience, or list of stakeholders>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Handles the two halves of stakeholder communication: the recurring **update** (translate delivery detail into what an audience needs to decide or know) and the **map** (figure out who matters, how much, and how to communicate with each before a major change).

## Input

$ARGUMENTS

*If no input is provided above, ask: "Do you want a status update or a stakeholder map? For an update: who's the audience and what's the latest? For a map: describe the initiative and who's involved."*

---

## Mode 1 — Status update

Lead with status and asks, not an activity log.

**Audience guide:**
- **Sponsor / exec** — outcomes, risks, money, decisions needed. No ticket-level detail.
- **Customer / client** — progress against what was promised, what's next, what you need from them.
- **Team** — more detail, blockers, coordination.

### [Project] — Status Update, [Date]

> **Overall: On track / At risk / Off track**
> [One sentence: the single most important thing they should know.]

**Progress since last update**
- [Outcome, not activity — "Invoicing MVP shipped to staging", not "worked on ticket 441"]

**Coming next**
- [What lands before the next update]

**Risks & issues**

| Item | Impact | What we're doing |
|---|---|---|
| [Risk] | [Plain] | [Action] |

**Decisions / help needed**
- [Specific ask — owner and by-when] *(omit if none)*

**Key dates**
- [Milestone — date]

---

## Mode 2 — Stakeholder map

1. **List stakeholders** — execs, eng leads, design, marketing, sales, support, legal, finance, partners, end users.
2. **Rate each** on Power (ability to influence decisions/resources) and Interest (how much the work affects them).
3. **Place on the grid** and apply the strategy:

| | High Interest | Low Interest |
|---|---|---|
| **High Power** | **Manage closely** — 1:1s, involve in decisions early | **Keep satisfied** — periodic updates, escalate only critical issues |
| **Low Power** | **Keep informed** — status updates, invite to demos | **Monitor** — light-touch, available on request |

### Communication plan

| Stakeholder | Role | Power | Interest | Strategy | Frequency | Channel | Key message |
|---|---|---|---|---|---|---|---|
| [Name] | [Role] | H/L | H/L | [Quadrant] | [Cadence] | [Channel] | [Framing] |

**Conflicts to manage:** [Stakeholders with competing interests and how to align them.]
**Neglect risks:** [Who becomes a problem if under-communicated to.]
