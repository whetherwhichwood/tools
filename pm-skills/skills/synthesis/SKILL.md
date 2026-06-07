---
name: synthesis
description: Turns a pile of raw research — interview transcripts, survey responses, support tickets, sales-call notes — into structured insights, themes, and opportunities with confidence levels. Use when you've done the research and need to answer "so what did we actually learn?"
argument-hint: <transcripts, survey data, notes, or other raw research>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Bridges the most common gap in product work: you have fifteen interviews and a survey export, and you need to know what they mean. This skill clusters scattered evidence into themes, separates strong signal from one-off anecdotes, and turns insights into opportunities worth acting on — without overclaiming.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste or point me to the raw research — interview transcripts, survey responses, support tickets, call notes. What question were you trying to answer?"*

---

## How to synthesize

1. **Anchor on the question.** What decision is this research meant to inform? Keep it in view so synthesis stays useful, not just tidy.
2. **Extract observations.** Pull concrete, verbatim observations — what people actually said or did, not your interpretation. Keep the source attached to each.
3. **Cluster into themes.** Group related observations. A theme needs more than one source; a single vivid quote is an anecdote, not a theme.
4. **Rate confidence.** High = many sources, consistent, behavioral evidence. Medium = several sources or stated-not-observed. Low = one source or contradicted elsewhere.
5. **Convert to opportunities.** For the themes that matter, frame the opportunity from the customer's side ("users struggle to…") so it feeds discovery and roadmap, not a premature feature.
6. **Be honest about gaps.** Note where the data is thin or where your sample is biased (who you talked to vs. who you didn't).

---

## Output Format

### Research Synthesis — [Topic]
**Question:** [What this research was meant to answer]
**Sources:** [N interviews / survey responses / tickets — and who they represent]

#### Themes

| # | Theme | What we heard | Sources | Confidence |
|---|---|---|---|---|
| T1 | [Theme] | [Pattern, with a representative quote] | [N, who] | High / Med / Low |

#### Opportunities
- **[Opportunity, framed as a customer problem]** — from themes [T#]; [why it matters]

#### Surprises
- [Anything that contradicted what the team assumed.]

#### Gaps & bias
- [What the data doesn't cover; who's over/under-represented.]

#### Recommended next step
[Validate a theme with `experiments`, feed opportunities into `discovery`/`roadmap`, or gather more data — and why.]
