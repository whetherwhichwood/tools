---
name: sprint-report
description: Analyzes sprint data — burndown, velocity, ticket statuses — and produces a concise, PM-ready report on sprint health, delivery confidence, risks, and blockers. Use when you want to understand how a sprint is tracking or write up a status.
argument-hint: <sprint data, burndown, or board state>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Reads where a sprint stands and tells you the truth about it: are you on track, what's blocked, what to raise at standup, and what to tell leadership. It assesses burndown trend, completed vs. committed, aging/blocked tickets, scope changes, and overloaded owners.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste your sprint data — ticket statuses, burndown, velocity, or a description of the board. Which day of the sprint are we on?"*

---

## Output Format

### Executive summary
[3 sentences maximum.]

### Delivery status
- **Status:** Green / Amber / Red
- **Sprint confidence:** [XX]%
- **Forecast:** [X] of [Y] items likely complete
- **Risk:** Low / Medium / High

### Top 3 PM priorities
1.
2.
3.

### Main risks
1.
2.
3.

### Actions today
1.
2.
3.

### Questions for standup
1.
2.
3.

### Leadership update
[2 short, professional sentences.]
