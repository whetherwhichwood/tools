---
name: triage
description: Turns a vague, messy, or incomplete request into a structured, PM-ready intake summary with risks, gaps, and a recommended next step. Triggers on raw stakeholder messages, unclear feature requests, forwarded emails, or any ask that needs sorting out before discovery or planning begins.
argument-hint: <raw message or request>
---

## What this does

Takes any unstructured request — a Slack message, an email, a hallway ask — and turns it into a clean summary a PM can act on. It names the likely goal, separates what's clear from what's missing, flags risks, and recommends the single best next step.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste the raw message, email, or request you'd like me to triage."*

---

## Output Format

### Requirement Intake Summary

**Request summary:**
[One or two sentences restating the ask in plain language.]

**Likely business goal:**
[What outcome the requester is probably chasing, even if they didn't say it.]

**Primary user / stakeholder need:**
[Who benefits and what they actually need.]

**What is clear:**
- [Facts you can rely on from the input]

**Missing information:**
- [Specific questions that must be answered before work starts]

**Risks / concerns:**
- [Anything that could make this harder, riskier, or wasteful than it looks]

**Intake classification:**
[Pick one: New feature / Enhancement / Bug or fix / Research question / Strategy question / Not enough information]

**Recommended next step:**
[The single most useful action — e.g. "Run discovery", "Write a charter", "Get one missing answer first".]
