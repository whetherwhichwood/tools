---
name: metrics
description: Diagnoses SaaS business health across growth, retention, unit economics, and capital efficiency, and frames the numbers for a board or leadership narrative. Covers ARR, churn, NRR, CAC, LTV, burn multiple, and TAM/SAM/SOM. Use when preparing a business review, fundraising, or prioritizing urgent fixes.
argument-hint: <business metrics and context>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Gives a complete read on whether a subscription business is healthy — not one metric in isolation, but how growth, retention, economics, and efficiency interact. It flags red flags vs. leading indicators and turns the result into a narrative leadership and investors can act on.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the metrics you have — revenue/ARR, growth rate, churn or NRR, CAC, LTV, burn, runway — and the context (board review, fundraise, internal check)."*

---

## The four dimensions

**1. Growth & retention** — are you growing and keeping customers?
- Revenue growth rate, Net Revenue Retention (NRR), gross/logo churn, Quick Ratio (new+expansion vs. churned)

**2. Unit economics** — is each customer profitable?
- CAC, LTV, LTV:CAC ratio (healthy ≈ 3:1+), CAC payback period (months)

**3. Efficiency & capital** — how well is cash turned into growth?
- Burn multiple (net burn ÷ net new ARR), gross margin, runway, Rule of 40 (growth % + profit margin %)

**4. Market** — how much room is left?
- TAM/SAM/SOM and current penetration

## How to read it
Connect the dimensions — strong growth with a bad burn multiple is a different problem than flat growth with great economics. Mark each metric as healthy, watch, or red flag against common benchmarks, and prioritize fixes by urgency.

---

## Output Format

### Business Health Scorecard — [Company]

| Dimension | Metric | Value | Benchmark | Status |
|---|---|---|---|---|
| Growth | Revenue growth | [X]% | [Stage benchmark] | Healthy / Watch / Red |
| Retention | NRR | [X]% | ~100%+ | … |
| Economics | LTV:CAC | [X]:1 | ~3:1 | … |
| Efficiency | Burn multiple | [X] | < 1.5 good | … |

**Overall verdict:** [One line on the systemic health.]

**Top 3 issues, by urgency:**
1. [Issue — why it matters — what to do]
2.
3.

**The board narrative:** [2-3 sentences a leader can say out loud: where we are, why, and the plan.]
