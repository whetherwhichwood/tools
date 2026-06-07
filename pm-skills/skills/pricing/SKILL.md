---
name: pricing
description: Designs pricing and packaging — tier structure, free vs. paid model, value metric, willingness-to-pay framing, bundling, and price-change analysis. Use when setting prices for a new product, restructuring tiers, evaluating a price change, or deciding what goes in which plan.
argument-hint: <product, segments, costs, and the pricing question>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Pricing is one of the highest-leverage and least-reversible product decisions, and it deserves its own thinking rather than a line in a strategy doc. This skill helps you choose what you charge for, how to package it, and how a change will land — grounded in the value customers get, not just your costs.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What's the product, who are the segments, and what's the question — set initial pricing, restructure tiers, evaluate a change, or design packaging? Share any cost, competitor, or willingness-to-pay data you have."*

---

## How to approach it

1. **Pick the value metric.** What you charge *per* — seats, usage, transactions, outcomes. The best value metric scales with the value the customer gets, so cost rises as they succeed (and feels fair).
2. **Anchor on willingness to pay, not cost.** Cost sets a floor; value sets the ceiling. Use competitor pricing, the cost of the alternative (including doing nothing), and any survey/interview signal to triangulate.
3. **Design the tiers / packaging.**
   - **Free / freemium vs. trial** — free works when usage itself drives acquisition (loops); trials work when value is obvious fast.
   - **Good / better / best** — most buyers pick the middle; design tiers to make the target tier the obvious choice.
   - **Fence features thoughtfully** — gate on value and segment (e.g. SSO, admin, volume), not on things that frustrate adoption.
4. **Model the change.** For a price change, estimate the effect on conversion, expansion, churn, and net revenue across segments. A higher price with lower volume can still win — show the math and the breakeven.
5. **Plan the rollout.** Grandfathering existing customers, communication, and timing. Price changes are trust events — handle migration deliberately (consider pairing with `rollout` and `stakeholder`).

---

## Output Format

### Pricing — [Product / Decision]

- **Value metric:** [What you charge per — and why it aligns with customer value]
- **Model:** [Freemium / Trial / Usage / Seat / Hybrid — and the rationale]

#### Packaging

| Tier | Target buyer | Price | Value metric limit | Key gated features |
|---|---|---|---|---|
| [Free/Starter] | [Segment] | [$] | [Limit] | [Features] |
| [Pro] | [Segment] | [$] | [Limit] | [Features] |
| [Enterprise] | [Segment] | [Custom] | — | [SSO, admin, SLA] |

#### Impact (for a change)

| Segment | Conversion effect | Expansion effect | Churn risk | Net revenue effect |
|---|---|---|---|---|
| [Segment] | [+/-] | [+/-] | [Low/Med/High] | [Estimate] |

**Recommendation:** [What to do and the one number it hinges on.]
**Biggest risk:** [The willingness-to-pay or churn assumption to validate before committing — test with `experiments`.]
**Rollout note:** [Grandfathering and communication plan if this changes existing prices.]
