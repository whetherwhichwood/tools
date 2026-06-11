---
name: risks
description: Identifies, scores, and recommends responses for project risks at any phase. Use when someone asks to analyze risks, run a risk review, or wants to know what they should be tracking. Produces a scored risk register with owners, trigger signals, and responses, at a depth matched to the time available.
argument-hint: <project context, phase, and known risks>
---

## What this does

Builds a risk register for a project: what could go wrong, how likely and how damaging it is, how early you'd see it coming, who owns it, and what to do about it. It scales from a 5-minute pre-screen to a board-level review.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the project context — name, phase, timeline, known risks, and any recent changes."*

---

## Before starting — what to gather

| Input | Required? | Why |
|---|---|---|
| Project context | Yes | Scope, timeline, stakeholders, goals — without this, risks are generic |
| Current phase | Yes | Risk profile changes by phase (discovery vs. testing vs. deployment) |
| Known constraints | No | Fixed deadlines or budget caps turn risks into near-certainties |
| Recent changes | No | Scope, team, or requirement changes are a primary risk source |
| Depth needed | No | Default Medium — see depth table |

If project context or phase is missing, ask before proceeding.

## Depth

| Depth | When | Risks | Sections |
|---|---|---|---|
| Low | "quick", initial pre-screen | 3-5 | Register + verdict only |
| Medium | default | 5-8 | Full output except Prioritization Reasoning |
| High | "thorough", "board report" | 8-12 | Full output |

## Scoring

Score every risk on four dimensions — each changes the response, not just the priority color.

- **Likelihood:** H = more likely than not / M = possible / L = unlikely but real
- **Impact:** H = project fails or major rework / M = delay or cost increase / L = minor inconvenience
- **Detectability:** Easy = clear leading indicators / Moderate = needs active monitoring / Hard = little warning before it triggers
- **Velocity:** Fast = escalates in hours / Medium = days / Slow = weeks

**Priority from Likelihood × Impact:**

| | High Impact | Low Impact |
|---|---|---|
| **High Likelihood** | Act now | Monitor actively |
| **Low Likelihood** | Prepare contingency | Log and revisit |

Every Hard-detectability risk needs a **trigger signal**: a specific observable event that tells you the risk has activated. Without one, nobody knows when to act.

**Response types:** Mitigate / Transfer / Avoid / Accept / Escalate. "Monitor" alone is not a response.

---

## Output Format

### Risk Analysis

**Project:** [Name] | **Phase:** [Phase] | **Date:** [Today]
**Depth:** Low / Medium / High | **Recent changes assessed:** Yes / No

#### Overall verdict
High / Medium / Low

[2-3 sentences: dominant risk theme, whether the project is healthy for its phase, what must change if not.]

#### Risk register

| # | Risk | Category | Likelihood | Impact | Priority | Detectability | Velocity | Response | Owner | Proximity |
|---|---|---|---|---|---|---|---|---|---|---|
| R1 | [Event — not a label] | Delivery/Technical/Stakeholder/Business | H/M/L | H/M/L | High/Med/Low | Easy/Moderate/Hard | Fast/Medium/Slow | [Type] | [Role] | [Week 1-2 / Month 1 / Later] |

#### Top risks — detail
*(every high-priority risk; if none, top 2 medium)*

**R[N] — [Name]**
- *What could happen:* [Specific bad outcome]
- *Why exposed:* [What makes this real for this project]
- *Trigger signal:* [Observable event confirming activation — required for Hard detectability]
- *Velocity:* [How fast it escalates and why]
- *Action:* [Who does what by when]

#### Validation experiments
*(Medium/High only — high-impact risks where the outcome is genuinely uncertain)*

| Risk | Experiment | What we're testing | Expected learning | By |
|---|---|---|---|---|
| [Name] | Spike/Prototype/Pilot/Data pull | [Assumption] | [What we'll know] | [Date] |

#### Stakeholder summary
*(Medium/High — written for a sponsor, not a PM)*

> "We are at risk of [outcome] due to [cause]. Recommended action: [next step]."

One line per top risk. Plain language.

#### Prioritization reasoning
*(High only)* Explain why top risks rank as they do — especially where velocity or detectability overrides a lower probability score.

#### Decisions needed

| Decision | Owner | By |
|---|---|---|
| [Requires authority above PM] | [Role] | [Date] |

#### Not assessed
- [Area — why it couldn't be evaluated from available information]
