---
name: charter
description: Turns a brief, intake summary, or rough idea into a complete, sponsor-ready project charter. Use when someone wants to formally start a project, needs a charter drafted, or has a brief that needs turning into an official document with scope, objectives, stakeholders, timeline, and budget.
argument-hint: <project brief or intake summary>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Writes the document that officially starts a project. A charter says what the project is, why it exists, who owns it, what's in and out of scope, and what success looks like — so the team has agreed direction before any planning begins.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the project brief or intake summary — name, problem, sponsor, timeline, and budget if known."*

---

## What to gather first

A charter needs at least these. If fewer than three are provided, ask before writing:

| Input | Why it matters |
|---|---|
| Project name + one-line description | Anchors everything else |
| Business problem being solved | Without this, the purpose is meaningless |
| Sponsor (person with budget authority) | No sponsor = no authorization |
| Rough timeline or deadline | Shapes scope and constraints |
| Budget range | Even a ballpark — needed for the budget section |

If the user says "just assume", do so, mark every assumption `[assumed]`, and list them at the bottom.

---

## Output Template

### Project Charter

**Project:** [Name]
**Date:** [Today] | **Version:** 1.0
**Prepared by:** [PM name or role]

#### 1. Purpose
[2-3 sentences. What problem does this solve? What gets better when it's done? Focus on the business pain, not the solution.]

#### 2. Objectives
What success looks like — specific enough to verify:
- [Objective 1]
- [Objective 2]
- [Objective 3]

#### 3. Scope
**In scope:**
- [What will be delivered]

**Out of scope:**
- [What will NOT be delivered — at least 2 items]

#### 4. Deliverables

| Deliverable | What it is | Due |
|---|---|---|
| [Name] | [Brief description] | [Date or phase] |

#### 5. Stakeholders

| Name / Role | Responsibility |
|---|---|
| [Sponsor] | Final decisions, budget authority |
| [PM] | Day-to-day delivery |
| [Others] | [Their role] |

#### 6. Timeline

| Milestone | Target date |
|---|---|
| Project start | [Date] |
| [Key milestone] | [Date] |
| Go-live / delivery | [Date] |

#### 7. Budget

| Item | Amount |
|---|---|
| Estimated delivery cost | [Amount or range] |
| Contingency (10-15%) | [Amount] |
| Budget owner | [Name / role] |

#### 8. Top risks
Keep to 3 maximum — headline risks only. A full risk scan is a separate step.

| Risk | Likelihood | Impact | Response |
|---|---|---|---|
| [Specific risk event] | H/M/L | H/M/L | Mitigate / Accept / Escalate |

#### 9. Constraints & assumptions
**Constraints** (fixed — cannot change):
- [e.g. Must go live before a regulatory deadline]

**Assumptions** (believed true — must be validated):
- [assumed] [e.g. Dev team available from Month 1]

#### 10. Approvals

| Role | Name | Date | Signature |
|---|---|---|---|
| Sponsor | | | |
| Project Manager | | | |
| [Other approver] | | | |

---

### Assumptions Log
All `[assumed]` items above — the sponsor should confirm or correct each before sign-off:

| Assumption | Why assumed | Who should confirm |
|---|---|---|
| [assumed item] | [Reason] | [Role] |
