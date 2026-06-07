---
name: budget
description: Tracks project spend against an approved budget and flags burn-rate risk early. Use when someone asks how much has been spent, whether the project is on budget, or shares cost/effort data that needs comparing to a baseline. Produces spent-to-date, forecast at completion, variance, and a status verdict.
argument-hint: <approved budget + spend to date + progress>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Compares what you've spent to what you planned, then forecasts where you'll land. The goal is to flag an overrun while there's still time to act — not to report it after the money's gone.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What's the approved budget, how much is spent so far, and how far through the work are you (by time or scope)? Day rates or effort data help if you have them."*

---

## What to gather first

| Input | Required? | Notes |
|---|---|---|
| Approved budget | Yes | The baseline |
| Spend to date | Yes | Actuals, not estimates |
| Progress | Yes | % time elapsed and/or % scope complete |
| Day rates / team cost | No | Enables forecast |
| Committed-but-unbilled | No | POs, contractor time not yet invoiced |

If budget or spend is missing, ask — a tracker without a baseline is meaningless.

---

## Output Template

### Budget Status — [Project]
**Date:** [Today] | **Reporting period:** [e.g. Sprint 1-4 / Month 2]

> **Verdict: On budget / Watch / Over or at risk**
> [One sentence: spent vs. planned and the forecast at completion.]

#### Summary

| Metric | Value |
|---|---|
| Approved budget | [Amount] |
| Spent to date | [Amount] ([X]%) |
| Committed (unbilled) | [Amount] |
| Remaining | [Amount] |
| Work complete | [X]% by scope / [Y]% time elapsed |
| Forecast at completion | [Amount] |
| Variance vs. budget | [+/- Amount] ([+/-]%) |

#### Burn rate
- Average spend per [sprint/week]: [Amount]
- At this rate, budget exhausts on: [Date] vs. planned end [Date]

#### Variance drivers

| Driver | Effect | Note |
|---|---|---|
| [e.g. scope add, overtime, vendor cost] | [+Amount] | [Why] |

#### Actions

| Action | Owner | By when |
|---|---|---|
| [e.g. re-baseline, cut scope, request change order] | [Role] | [Date] |

---

## After generating

If the forecast implies a budget change, suggest a `decisions` log entry and a `stakeholder` update.
