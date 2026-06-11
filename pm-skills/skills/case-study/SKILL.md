---
name: case-study
description: Captures a concise case study for a completed product slice, release, incident response, or shipped improvement. Use after release readiness, rollout, or delivery work when you want a reusable narrative of what changed, why it mattered, what was learned, and what evidence supports it.
argument-hint: <slice summary, PRD, release notes, diffs, outcomes, or notes>
---

## What this does

Turns completed work into a short, useful narrative. The goal is not marketing polish; it is memory. A good case study helps a future teammate understand the problem, the tradeoffs, what shipped, what changed, and what you would do differently next time.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the slice summary, PRD, release notes, implementation notes, outcome data, or anything you know about what changed and why."*

---

## What to gather first

| Input | Required? | Why |
|---|---|---|
| Slice / project name | Yes | Gives the story a stable reference |
| Problem or opportunity | Yes | Explains why the work mattered |
| What shipped | Yes | Separates outcome from intention |
| Evidence | No | Metrics, user feedback, tests, screenshots, PRs, or release notes |
| Surprises / tradeoffs | No | Preserves learning, not just success theater |
| Follow-ups | No | Captures unfinished work honestly |

If the work has not shipped yet, label the entry **Draft** and avoid claiming impact.

---

## Output Format

### Case Study — [Slice or Project Name]

**Status:** Draft / Shipped / Measured  
**Date:** [Today]  
**Related skills/artifacts:** [PRD, stories, release-check, rollout, release notes, PRs]

#### 1. Summary
[2-3 sentences: what changed, for whom, and why it mattered.]

#### 2. Problem
[What was painful, unclear, costly, risky, or newly possible? Include user/business context.]

#### 3. Approach
[What path did we choose? Name major tradeoffs, constraints, or sequencing decisions.]

#### 4. What shipped
- [Concrete shipped change]
- [Concrete shipped change]
- [Concrete shipped change]

#### 5. Evidence and outcome
| Signal | Result | Confidence |
|---|---|---|
| [Metric, feedback, QA result, adoption, incident reduction] | [Observed result or "Not measured yet"] | High / Medium / Low |

#### 6. Surprises and lessons
- [What we learned that was not obvious at the start]
- [What we would repeat or avoid next time]

#### 7. Follow-ups
| Item | Owner | Priority |
|---|---|---|
| [Follow-up or open question] | [Role/name] | High / Medium / Low |

---

## After generating

If the case study exposes unfinished work, suggest `roadmap` or `retro` as the next step. If it is complete, stop the loop and ask whether the user wants the entry adapted for a portfolio, stakeholder update, or release narrative.
