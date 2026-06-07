---
name: prd
description: Writes a Product Requirements Document from discovery findings, a brief, or raw stakeholder input. A PRD defines what to build and why, giving the team a single agreed source of truth. Use after discovery and before stories or design begin.
argument-hint: <discovery findings, charter, or feature brief>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Turns scattered notes, research, and ideas into one clear document that says what we're building, for whom, why now, and how we'll know it worked. A good PRD ends arguments about scope before they start. It is a living document, not a frozen spec.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share your discovery findings, charter, or feature brief. If discovery hasn't been done, note that — requirements written without it tend to change."*

---

## What to gather first

| Input | Required? | Why |
|---|---|---|
| Project name + goal | Yes | Anchors the document |
| Discovery findings or brief | Yes | Without this, requirements are invented, not elicited |
| Target users / stakeholders | Yes | Requirements without a user are just features |
| Known constraints | No | Technical, budget, regulatory — shapes feasibility |
| Out-of-scope items | No | Excluding things up front prevents scope creep |

---

## Output Template

### PRD — [Project Name]

**Version:** 1.0 | **Date:** [Today] | **Author:** [PM name or role]
**Status:** Draft / Under Review / Approved
**Approvers:** [Who must sign off]

#### 1. Purpose & background
[2-3 sentences. Why does this exist? What problem does it solve? What triggered it now?]

#### 2. Problem & users
Who has this problem, what it is, why it's painful, and the evidence (quotes, data). Frame the target users by the job they're trying to get done, not just demographics.

| Role / persona | Who they are | Primary need (job-to-be-done) |
|---|---|---|
| [User type] | [Description] | [What they need from this] |

#### 3. Goals & success metrics
Goals without metrics are wishes. Every goal needs at least one measurable outcome.

| Goal | Success metric | Target |
|---|---|---|
| [What we want to achieve] | [How we measure it] | [Number or threshold] |

#### 4. Assumptions & constraints
**Assumptions** (believed true — validate before build):
- [assumed] [Statement]

**Constraints** (fixed — cannot change):
- [e.g. Must meet a regulatory requirement; must integrate with an existing system]

#### 5. Functional requirements
Group by feature area or user journey. Number every requirement for traceability.

**[Feature area 1]**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-01 | [Who can do what, under what conditions, to what outcome] | Must / Should / Could | [Clarification] |

**Priority (MoSCoW):** Must = product fails without it · Should = high value, has a workaround · Could = nice to have, cut first · Won't = out of scope (list in section 7).

#### 6. Non-functional requirements

| ID | Category | Requirement | Target |
|---|---|---|---|
| NFR-01 | Performance | [e.g. Page load] | [e.g. < 2s] |
| NFR-02 | Security | [e.g. Auth] | [e.g. MFA for admin] |
| NFR-03 | Accessibility | [e.g. Standard] | [e.g. WCAG 2.1 AA] |
| NFR-04 | Availability | [e.g. Uptime] | [e.g. 99.5%] |

#### 7. Out of scope
Stating what is NOT included is as important as what is.
- [Explicitly excluded item]

#### 8. Dependencies

| Dependency | Type | Owner | Status |
|---|---|---|---|
| [e.g. External API access] | Technical | [Team] | Confirmed / Pending / Blocked |

#### 9. Open questions

| # | Question | Who can answer | By when |
|---|---|---|---|
| Q1 | [Unresolved question affecting requirements] | [Role] | [Date] |

#### 10. Sign-off

| Role | Name | Status | Date |
|---|---|---|---|
| Sponsor / Product Owner | | Approved / Changes requested | |
| Tech Lead | | Approved / Changes requested | |

---

## After generating

Suggest running `pre-mortem` to stress-test the plan, then `stories` to break it into a backlog.
