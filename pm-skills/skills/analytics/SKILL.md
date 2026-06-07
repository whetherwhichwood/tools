---
name: analytics
description: Hands-on product analytics — writes SQL from plain-English questions, runs cohort and retention analysis, and evaluates A/B tests with statistical rigor. Translates raw numbers into product decisions. Use when you need a query, want to understand retention, or have to decide whether to ship a variant.
argument-hint: <data question, schema, or experiment results>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Bridges the gap between a product question and the data that answers it. It writes queries you can run, analyzes how cohorts retain over time, and judges whether an experiment result is real and ship-worthy — always ending in a plain-English "so what."

## Input

$ARGUMENTS

*If no input is provided above, ask: "What do you need — a SQL query, a cohort/retention analysis, or an A/B test evaluation? Share your schema, data file, or experiment results."*

---

## Modes

### SQL queries
1. Read the schema (provided file, diagram, or description) — tables, columns, keys, relationships.
2. Confirm the dialect (PostgreSQL, BigQuery, MySQL, Snowflake, …).
3. Write an efficient query, commented for the non-obvious parts, with notes on performance for large tables.
4. Explain the logic in plain English and suggest how to sanity-check the result.

### Cohort & retention analysis
1. Validate the data (cohort identifier, time periods, metric) and summarize cohort sizes and date ranges.
2. Compute retention curves and feature-adoption trends; flag drop-off points and anomalies.
3. Segment where it reveals something (by acquisition source, plan, behavior).
4. Recommend the qualitative follow-up — what to go ask users about the pattern.

### A/B test analysis
1. Restate the hypothesis, the variant, the primary metric, and any guardrail metrics.
2. Check the test was valid — adequate sample size, ran long enough, no peeking bias.
3. Compute statistical significance and confidence intervals (generate calculation steps if needed).
4. Recommend: **ship / extend / stop**, with the reasoning and any guardrail concerns.

---

## Output Format

Deliver the query or analysis, then always close with:

**What this means:** [The product decision the numbers support — not just the numbers.]
**Caveats:** [Data quality, sample, or interpretation limits the reader should know.]
