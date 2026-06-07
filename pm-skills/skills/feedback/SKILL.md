---
name: feedback
description: Triages the continuous stream of unsolicited customer signal — app store reviews, support tickets, NPS verbatims, social mentions, sales feedback — into tagged, prioritized product intelligence. Use when you have a backlog of raw feedback and need to know what's actually worth acting on.
argument-hint: <reviews, tickets, NPS verbatims, or other feedback>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Every live product generates a firehose of unsolicited feedback. This skill turns that noise into signal: it categorizes each item, spots the patterns worth caring about, separates loud-but-rare complaints from quiet-but-common ones, and routes the output to the right next step.

It differs from `synthesis` (deliberate research you went and gathered) and `triage` (a single incoming stakeholder request) — this is the ongoing, ambient stream.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste the feedback — reviews, support tickets, NPS comments, social mentions. Roughly how much volume and over what period?"*

---

## How to process

1. **Tag each item** by type (bug / usability / missing feature / pricing / performance / praise / churn signal) and by the area of the product it touches.
2. **Quantify, don't just read.** Count how often each theme appears. A pattern mentioned 40 times outranks one furious review, even if the review is louder.
3. **Weight by severity and segment.** A bug blocking a paying enterprise customer beats a cosmetic gripe from a free user. Note who is saying it.
4. **Detect trends.** Is a theme rising over time (a regression, a new release issue) or steady background noise?
5. **Separate signal from emotion.** Strong language flags intensity, not necessarily importance — anchor on frequency and impact.
6. **Route, don't hoard.** Each cluster should point somewhere: a bug ticket, a discovery topic, a roadmap input, or a known-and-accepted note.

---

## Output Format

### Feedback Triage — [Source / period]
**Volume:** [N items over X period]

#### Top themes

| # | Theme | Type | Mentions | Trend | Segment most affected | Severity | Route to |
|---|---|---|---|---|---|---|---|
| 1 | [Theme] | Bug/Feature/UX/… | [count] | Rising/Steady/Falling | [who] | High/Med/Low | Bug ticket / Discovery / Roadmap / Accept |

#### What changed
[New themes since last review, or spikes tied to a recent release.]

#### Praise worth noting
[What customers love — useful for messaging and for not breaking it.]

#### Recommended actions
1. [Highest-impact action and why — usually the highest frequency × severity item.]
2.
3.
