---
name: assumptions
description: Surfaces the risky assumptions behind an idea and ranks them so you test the right things first. Use when evaluating a new concept, pressure-testing a feature, or deciding what to validate before building. Covers value, usability, viability, feasibility, and — for new products — ethics, go-to-market, strategy, and team.
argument-hint: <product idea, feature, or concept>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Every idea rests on beliefs that might be wrong. This skill names those beliefs, sorts them by how much damage a wrong one would cause and how unsure you are, and tells you which to test first — so you spend validation effort where it matters.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Describe the idea, feature, or product concept. Is this a brand-new product or a change to an existing one?"*

---

## Step 1 — Identify assumptions

Think from three angles about why this might fail:
- **Demand/value:** Will customers want it and keep using it?
- **Experience:** Will people figure out how to use it?
- **Build:** Can we deliver it with current technology and resources?

Then surface assumptions across these categories. The first four apply to everything; add the last four for brand-new products.

| Category | The question it answers |
|---|---|
| **Value** | Will it create value customers come back for? |
| **Usability** | Will people understand and adopt it? |
| **Viability** | Can we monetize, support, scale, and stay compliant? |
| **Feasibility** | Can we build it with what we have? |
| **Ethics** *(new products)* | Should we build it at all? Any harm to customers? |
| **Go-to-market** *(new products)* | Can we reach and convince customers? Right channel, message, timing? |
| **Strategy** *(new products)* | Is this the right problem? Can competitors copy it? |
| **Team** *(new products)* | Do we have the right people and tools to pull it off? |

## Step 2 — Rank by Impact × Risk

For each assumption:
- **Impact** = value of validating it × how many customers it affects
- **Risk** = (1 − confidence) × effort to test

| Impact | Risk | What to do |
|---|---|---|
| High | High | Design an experiment — test it now |
| High | Low | Proceed — low-risk, high-reward |
| Low | High | Drop it — not worth the investment |
| Low | Low | Defer until bigger assumptions are settled |

---

## Output Format

### Assumption Map — [Idea]

| # | Assumption | Category | Confidence | Impact | Risk | Verdict | Suggested test |
|---|---|---|---|---|---|---|---|
| A1 | [What we're assuming is true] | Value/Usability/… | H/M/L | H/M/L | H/M/L | Test now / Proceed / Drop / Defer | [Cheapest way to learn] |

**Test first:** [The 1-3 highest Impact × Risk assumptions — these go to the `experiments` skill.]

**Biggest blind spot:** [The assumption most likely to be wrong that nobody is talking about.]
