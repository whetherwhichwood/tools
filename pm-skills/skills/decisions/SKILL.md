---
name: decisions
description: Creates a structured decision log from project changes, scope revisions, or PM decisions. Use whenever a decision or change of direction needs to be formally recorded for an audit trail — what was planned, what changed, why, who decided, and the downstream impact.
argument-hint: <decision context, change description, or prior output>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Captures decisions and changes in a consistent, auditable format so nobody re-litigates settled questions later. Each entry records the original plan, the new plan, the reason, who proposed and approved it, and the impact across delivery, technical, scope, and cost.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Describe the decision or change — what was originally planned, what changed, and why? Include who proposed it if known."*

---

## What to extract

For each decision or change in the input, capture:

- **Area** — Scope / Timeline / Budget / Architecture / Team / Process / Other
- **Original plan** — What was agreed or assumed before
- **Revised plan** — What's been decided instead
- **Reason** — Business driver, risk, constraint, or stakeholder request
- **Proposed by** — Role or name who raised it
- **Delivery impact** — Effect on timeline, sprint commitments, milestones
- **Technical impact** — Effect on architecture, integrations, approach
- **Scope impact** — Effect on roadmap, backlog, accepted scope
- **Cost impact** — Increase / decrease / neutral / TBC
- **Status** — Proposed / Under Review / Approved / Rejected
- **Approved by** — Role or name; `[TBC]` if not yet confirmed

If a field can't be determined, write `[TBC]`.

---

## Output Format

### Decision Log

**Project:** [Extract from input, or "Not specified"]
**Date:** [Today] | **Prepared by:** [PM or role]

| Area | Original plan | Revised plan | Reason | Proposed by | Delivery impact | Technical impact | Scope impact | Cost impact | Status | Approved by |
|---|---|---|---|---|---|---|---|---|---|---|
| [Area] | [Planned] | [Changed to] | [Why] | [Who] | [Effect] | [Effect] | [Effect] | [Effect] | Proposed/Under Review/Approved/Rejected | [Who] |

*One row per decision.*

---

## After generating

If a decision implies budget or timeline change, suggest updating the `budget` tracker and sending a `stakeholder` update.
