---
name: north-star
description: Defines a single North Star Metric plus 3-5 supporting input metrics that drive it. Classifies the type of business and validates the metric against the criteria for a good North Star. Use when choosing what to measure, setting up a metrics framework, or aligning a team on one leading indicator of success.
argument-hint: <business or product context>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Helps a team pick the one customer-centric metric that best predicts long-term success, plus the handful of input metrics that move it. A North Star aligns everyone on what "good" means and what to optimize.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Describe the business — what it does, the value customers get, the business model, and any metrics you track today."*

---

## What a North Star is and isn't

**It is:** a single, customer-centric metric that reflects the value customers get from the product, and acts as a leading indicator of long-term business success.

**It is not:** multiple metrics, a pure revenue/LTV number, an OKR (that's goal-setting), or a strategy (though choosing the right one is a strategic act).

## Step 1 — Classify the business

| Game | Question | Examples |
|---|---|---|
| **Attention** | How much time do customers spend in the product? | Streaming, social |
| **Transaction** | How many transactions occur on the platform? | Marketplaces, payments |
| **Productivity** | How efficiently can someone get their work done? | Design, docs, collaboration tools |

## Step 2 — Propose the North Star

It should meet all seven criteria:
1. **Easy to understand** — everyone in the org gets it
2. **Customer-centric** — reflects value delivered, not just revenue or activity
3. **Sustainable value** — indicates habits and lasting engagement
4. **Vision-aligned** — represents real progress toward the mission
5. **Quantitative** — clearly measurable
6. **Actionable** — teams can move it through their work
7. **Leading indicator** — predicts future revenue and success

## Step 3 — Define input metrics

Name 3-5 leading indicators that most directly drive the North Star. Each should be easier to move in the short term, clearly contribute to the North Star, and point to where to focus effort.

---

## Output Format

### North Star — [Company / Product]

- **Business game:** [Attention / Transaction / Productivity] — [why]
- **North Star Metric:** [The metric] — [one-line definition]
- **Why it qualifies:** [How it meets the 7 criteria — flag any it meets weakly]

**Input metrics (the constellation):**

| Input metric | Why it drives the North Star | How a team moves it |
|---|---|---|
| [Metric 1] | [Link to North Star] | [Lever] |

**Watch out for:** [Any way this metric could be gamed or mislead — e.g. growth that doesn't reflect real value.]
