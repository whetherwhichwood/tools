---
name: pm
description: Orchestrator — analyzes any input and routes it to the right skill(s) in the right order. Use when you paste a raw stakeholder message, transcript, feature request, or brief and want help deciding which PM skill to run. This is the recommended entry point when you're not sure where to start.
argument-hint: <any input — message, transcript, brief, or question>
---

## What this does

Reads whatever you give it, figures out what you actually need, and points you to the right skill (or sequence of skills). It plans the workflow and can run the skills in order, synthesizing the outputs — so you don't have to know the toolset to use it.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share anything — a raw stakeholder message, meeting transcript, feature request, brief, or just a question. I'll figure out the right skill and order."*

---

## How to route

### Step 1 — Read the input
Determine: what type is it (raw request, transcript, brief, data, question)? What lifecycle phase does it belong to (intake, discovery, requirements, delivery, launch, strategy)? What's the most likely immediate need?

### Step 2 — Map to skills

| If the input is… | Route to |
|---|---|
| A messy/unclear request | `triage` first, then whatever it points to |
| "What could go wrong?" | `risks` or `pre-mortem` |
| A new project to formalize | `charter` |
| A problem to understand before building | `discovery` → `assumptions` → `experiments` |
| Findings ready to document | `prd` → `stories` |
| Goal-setting | `okrs`, `north-star` |
| A meeting transcript | `meeting` |
| Sprint to plan or assess | `sprint`, `sprint-report` |
| About to ship | `release-check`, `rollout`, `release-notes` |
| A status to communicate | `stakeholder` |
| What to build next | `prioritize`, `roadmap` |
| Direction/positioning | `strategy`, `research` |
| A launch | `gtm` |
| A data question | `analytics`, `metrics` |
| Code to review before shipping | `ship-check` |
| Customer signal to make sense of | `synthesis`, `feedback` |
| An incident or failed launch | `postmortem` |
| A pricing decision | `pricing` |
| A career/level question | `leadership` |
| A completed slice or shipped improvement to summarize | `case-study` |

### Step 3 — Place it in Plan / Build / Review

Use this lightweight workflow when the user's situation spans product planning and implementation:

| Mode | Goal | Skills |
|---|---|---|
| Plan | Define a small, shippable slice | `triage`, `discovery`, `assumptions`, `experiments`, `prd`, `stories`, `risks`, `pre-mortem` |
| Build | Translate the slice into implementation work | `stories`, `tech-review`, `sprint`, `ship-check` |
| Review | Decide whether to ship and capture learning | `release-check`, `rollout`, `release-notes`, `stakeholder`, `case-study`, `retro`, `postmortem` |

### Step 4 — Plan and confirm
Lay out the proposed sequence in one or two lines, note what can run in parallel, and confirm before executing. If a single skill clearly covers it, route there directly.

After finishing a skill, suggest the single best next skill and at most one alternative. Ask for confirmation before continuing unless the user already asked for a chained workflow.

---

## Output Format

**You need:** [One-line read of the real request.]
**Recommended sequence:** [skill] → [skill] → [skill] *(with one phrase each on why)*
**Starting with:** [The first skill, and what it needs from you to begin.]
**After that:** [Single best next skill, plus at most one alternative, phrased as a confirmation question.]
