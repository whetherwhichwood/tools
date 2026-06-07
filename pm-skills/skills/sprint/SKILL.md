---
name: sprint
description: Produces a capacity-aware sprint plan from team availability, a backlog, and a sprint goal. Calculates honest capacity, scopes the backlog into priority tiers, and flags dependencies and scope risk. Use when planning an upcoming Agile sprint.
argument-hint: <team availability, backlog, and sprint goal>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Builds a sprint plan that scopes work honestly, not optimistically. It calculates realistic capacity, sorts the backlog into commit/should/stretch tiers, names owners and dependencies, and flags when the team is overcommitted before the sprint starts.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the sprint details — team members and availability, sprint length, backlog items, the sprint goal, and any carryover from last sprint."*

---

## What to gather first

| Input | Required? | Notes |
|---|---|---|
| Team members and availability | Yes | Names, days available, PTO, on-call |
| Sprint length | Yes | Days or weeks |
| Backlog items | Yes | Paste or describe |
| Sprint goal | Yes | One sentence — if the team can't state it, flag that first |
| Carryover | No | Unfinished work being re-committed |
| Dependencies | No | Anything blocked on another team |
| Estimation unit | No | Points or hours (default points) |

## Capacity rules
- Plan at **70-80% of available days** — meetings, reviews, and interrupts eat the rest.
- Flag explicitly if proposed load exceeds 80%.
- A person reduced below 2 days by PTO/on-call is limited capacity.
- Carryover counts against capacity — it isn't free.

## Priority tiers
- **P0 — Must ship:** the sprint fails without these.
- **P1 — Should ship:** high value, expected to complete; cut first if things slip.
- **P2 — Stretch:** commit only after P0 and P1 are fully covered. Never at full confidence.

---

## Output Format

### Sprint Plan — [Name or Number]
**Dates:** [Start] – [End] | **Team:** [N] people
**Sprint goal:** [One clear sentence about what success looks like]

#### Capacity

| Person | Available days | Usable capacity | Notes |
|---|---|---|---|
| [Name] | [X] of [Y] | [X] pts/hrs | [PTO, on-call] |
| **Total** | **[X]** | **[X]** | |

> Planned at [X]% of total capacity.

#### Sprint backlog

| Priority | Item | Estimate | Owner | Dependencies |
|---|---|---|---|---|
| P0 | [Must-ship] | [X] | [Person] | None / Blocked by [X] |
| P1 | [Should-ship] | [X] | [Person] | None |
| P2 | [Stretch] | [X] | [Person] | None |

**Planned load:** [X] | **Capacity:** [X] | **Load:** [X]%

#### Scope risk
[Anything that threatens the goal — overcommitment, unresolved dependency, vague item. Be explicit.]
