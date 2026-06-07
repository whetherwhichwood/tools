---
name: pre-mortem
description: Runs a pre-mortem on a PRD or launch plan — imagines it has already failed and works backward to find what killed it. Separates real threats from overblown worries and unspoken concerns, then sorts them into launch-blocking, fast-follow, and track. Use when preparing for launch or stress-testing a plan.
argument-hint: <PRD, launch plan, or product plan>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Assumes the launch failed, then asks why — surfacing risks while there's still time to act. It forces honesty about what the team is overconfident about and what nobody is saying out loud, then turns the real threats into an action plan.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the PRD or launch plan you want to stress-test, including the timeline and key assumptions."*

---

## How to run it

1. **Imagine failure.** The product launched. It flopped — low adoption, missed targets, reputation hit. What went wrong? What did we miss, mis-execute, or overestimate?

2. **Categorize every failure mode:**

   | Type | Definition | Action |
   |---|---|---|
   | **Tigers** | Real problems you can see, backed by evidence or experience | Require action |
   | **Paper Tigers** | Concerns others raise but you believe are overblown | Document to align stakeholders; don't over-invest |
   | **Elephants** | Things nobody is discussing enough — unvalidated assumptions | Investigate before launch |

3. **Sort the Tigers by urgency:**
   - **Launch-blocking** — must be solved before launch (broken core feature, regulatory blocker, unmet key dependency)
   - **Fast-follow** — must be solved within ~30 days post-launch (performance issues, secondary features)
   - **Track** — monitor post-launch, fix if it becomes real (edge cases, nice-to-haves)

4. **Write an action plan for every launch-blocking Tiger.**

---

## Output Format

### Pre-Mortem — [Product / Launch]

#### Tigers (real threats)

| # | Risk | Why it's real | Urgency | Owner | Action |
|---|---|---|---|---|---|
| T1 | [Failure mode] | [Evidence] | Launch-blocking / Fast-follow / Track | [Role] | [What to do] |

#### Paper Tigers (documented, not prioritized)
- [Concern] — [why it's overblown]

#### Elephants (investigate before launch)
- [Unspoken assumption] — [how to validate it, and who]

#### Verdict
[Go / No-go / Conditional go] — [the single most important thing to resolve before launch.]
