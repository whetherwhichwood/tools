---
name: okrs
description: Drafts team-level OKRs — inspirational objectives paired with measurable key results — aligned to company strategy. Use when setting quarterly goals, aligning a team to company direction, or learning to write effective OKRs. Produces alternative sets to spark discussion.
argument-hint: <team, product area, and company objectives>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Bridges vision and execution. An OKR pairs a qualitative, inspiring **objective** ("why/what") with 3 quantitative **key results** ("how much"). This skill drafts three distinct OKR sets so the team can debate direction rather than rubber-stamp one option.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What team or product area is this for, and what are the company objectives or strategy it should ladder up to?"*

---

## How OKRs relate to other metrics
Don't treat these as alternatives — they connect:
- **Key Results** are quantitative metrics; some may be KPIs.
- **KPIs** are a few key metrics tracked over a longer horizon. They can serve as key results or as health metrics that balance the OKR.
- **North Star Metric** is a single customer-centric KPI; key results can express the expected change in it.

## How to draft

1. **Understand the strategy** — what is the company trying to achieve, and where can this team most influence it?
2. **Write the objective** — qualitative, inspirational, time-bound (usually a quarter). It should describe directional intent, not a number.
3. **Write 3 key results** — measurable, ambitious but achievable (aim for ~60-70% confidence), and clearly tied to the objective.
4. **Check the ladder** — each KR should visibly contribute to a company goal.

**Example:**
> **Objective:** Delight new users with an effortless onboarding experience
> **Key Results:**
> - CSAT ≥ 75% on the onboarding survey
> - 66%+ of onboardings completed within two days
> - Average time-to-value ≤ 20 minutes

---

## Output Format

Present three OKR sets with equal weight.

### Option [A/B/C]: [Short label]
**Objective:** [1-2 inspiring sentences]
**Key Results:**
1. [Measurable KR with a target]
2. [Measurable KR with a target]
3. [Measurable KR with a target]
**Why this set:** [What strategic bet it represents and the tradeoff it makes.]

**Recommendation:** [Which set you'd pick and why — or how to combine.]

**Health metrics to watch:** [Metrics that should NOT degrade while chasing these OKRs.]
