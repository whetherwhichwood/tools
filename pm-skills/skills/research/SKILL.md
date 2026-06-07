---
name: research
description: Market and customer research — personas, customer journey maps, jobs-to-be-done, market sizing (TAM/SAM/SOM), segmentation, and competitor analysis. Use when you need to understand who the customer is, what they're trying to do, how big the opportunity is, or who you're up against.
argument-hint: <product/market + the research question>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Answers "who are we building for and how big is this?" It can produce any of several research artifacts from the data you provide (surveys, interviews, analytics) or from reasoned estimates, always grounding output in evidence rather than invention.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What do you want — personas, a journey map, market sizing, segmentation, or a competitor analysis? Share any research data you have (surveys, interviews, analytics) or the market context."*

---

## Artifacts (pick what's needed)

### Personas
Build 3 research-backed personas. For each: who they are, their job-to-be-done, pains, desired gains, behaviors, and one non-obvious insight. Ground every trait in the provided data; flag anything inferred.

### Customer journey map
Map the stages a customer moves through (awareness → consideration → onboarding → use → renewal/advocacy). For each stage: what they do, think, and feel; pain points; and opportunities to improve.

### Jobs-to-be-done
Frame the underlying job ("When [situation], I want to [motivation], so I can [outcome]"). Separate functional, emotional, and social dimensions. Jobs are stable even as solutions change.

### Market sizing (TAM / SAM / SOM)
- **TAM** — total demand if everyone who could buy, did
- **SAM** — the slice you can actually serve (geography, segment, product fit)
- **SOM** — what you can realistically win in 1-3 years
Do it **top-down** (industry size narrowed) and **bottom-up** (customers × price × frequency) and reconcile the two. List the key assumptions behind each number so they can be challenged.

### Segmentation
Group the market by problem/need (and firmographics where relevant). For each segment: size, pain intensity, willingness to pay, and reachability.

### Competitor analysis
For each competitor: offering, pricing model, target market, strengths, weaknesses, and recent moves. End with where you have a defensible edge and where you're exposed.

---

## Output Format

Deliver the requested artifact with clear structure. Always end with:

**Key assumptions to validate:** [The estimates or inferences most likely to be wrong.]
**So what:** [The single most important implication for product or go-to-market.]
