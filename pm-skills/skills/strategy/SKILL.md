---
name: strategy
description: Sets product strategy and positioning — vision, target segments, value proposition, tradeoffs, and how the product wins. Combines a strategy canvas, a positioning statement, a business model canvas, and a "press release from the future" to force customer-first clarity. Use when defining direction or aligning stakeholders on a bet.
argument-hint: <product, market context, and goals>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Pulls the core strategy artifacts into one place so direction is explicit and defensible. It articulates the vision and the customer, makes the hard "what we won't do" choices, frames how the business creates and captures value, and tests whether the story is compelling enough that customers would actually want it.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Describe the product, its market and competitors, your resources/constraints, and the goal. Which output do you want — strategy canvas, positioning statement, business model, future press release, or all of them?"*

---

## Components (use what fits the request)

### 1. Strategy canvas
- **Vision** — what we aspire to and why it matters
- **Target segments** — defined by the job/problem, not demographics; which segment first and why
- **Cost position** — competing on low cost or differentiated value?
- **Value proposition** — for each segment: their situation before → how we help → outcome after → today's alternative
- **Tradeoffs** — what we will NOT do, and how saying no creates focus
- **Key metrics** — the North Star and the supporting metrics
- **Growth** — how we acquire and expand
- **Capabilities & defensibility** — what we must be great at, and why it's hard to copy

### 2. Positioning statement
> For [target customer] who [need], [product] is a [category] that [key benefit]. Unlike [alternative], it [differentiator].

Forces hard choices on target, category, and differentiation. If it reads generic, sharpen it against a specific alternative.

### 3. Business Model Canvas (how value is created, delivered, captured)
Key partners · key activities · key resources · value propositions · customer relationships · channels · customer segments · cost structure · revenue streams.

### 4. Press release from the future
Write the launch announcement as if the product already shipped perfectly — from the customer's perspective, focused on the problem solved, ~1 page. If you can't make it compelling, the idea may be weak. Pair with a short FAQ of the hardest questions.

---

## Output Format

Deliver the requested component(s) with clear headers. End with:

**Strategic bet:** [The one-sentence thesis — who we serve, what we uniquely do, why we win.]
**Biggest risk to the strategy:** [The assumption that, if wrong, breaks it.]
