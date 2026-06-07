---
name: prioritize
description: Ranks features, ideas, or initiatives using the right framework for the situation — RICE, ICE, Opportunity Score, Kano, MoSCoW, weighted matrix, and more — and adds ROI and pricing lenses where money is the deciding factor. Use when deciding what to build next or comparing options with tradeoffs.
argument-hint: <list of features/options + goal or constraints>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Picks the prioritization method that fits your decision, applies it to your options, and returns a ranked list with the reasoning. It can also layer in financial lenses — expected ROI and pricing/revenue impact — when the call comes down to money, not just reach and effort.

## Input

$ARGUMENTS

*If no input is provided above, ask: "List the features or options to rank, and tell me the goal or constraint driving the decision (growth, retention, revenue, risk, speed)."*

---

## Pick the framework

Prioritize problems (opportunities), not solutions, wherever possible.

| Framework | Best for | Formula / shape |
|---|---|---|
| **Opportunity Score** | Customer problems (recommended) | Importance × (1 − Satisfaction), normalized 0–1 |
| **ICE** | Quick ranking of ideas | Impact × Confidence × Ease (each 1-10) |
| **RICE** | Ideas at scale, more rigor | (Reach × Impact × Confidence) / Effort |
| **Impact vs. Effort** | Fast triage | 2×2 — quick, not strategic |
| **Risk vs. Reward** | Bets with uncertainty | 2×2 weighing upside against risk |
| **Kano** | Understanding expectations | Must-be / Performance / Attractive — for understanding, not ranking |
| **Weighted matrix** | Multi-criteria decisions needing buy-in | Weight criteria, score each option |
| **MoSCoW** | Requirements scoping | Must / Should / Could / Won't |
| **Eisenhower** | Personal task triage | Urgent × Important |

Default to **RICE** or **ICE** for a feature backlog; **Opportunity Score** when you have importance/satisfaction data; **weighted matrix** when stakeholders need to see the criteria.

## Financial lenses (add when money decides)
- **ROI:** estimated value created (revenue, cost saved, retention) ÷ estimated cost. Flag the confidence of each estimate.
- **Pricing/revenue impact:** does this change willingness to pay, expand a tier, reduce churn, or open a new segment? Note it even if rough.

---

## Output Format

### Prioritization — [Decision]
**Framework used:** [Name] — [why it fits this decision]

| Rank | Option | [Framework factors…] | Score | ROI signal | Notes |
|---|---|---|---|---|---|
| 1 | [Option] | [e.g. R/I/C/E values] | [Score] | [High/Med/Low + why] | [Tradeoff] |

**Recommendation:** [Top 1-3 to do now, and the most important thing to cut or defer — with the reason.]
**Lowest-confidence input:** [The estimate most likely to be wrong, so the team knows where to validate.]
