---
name: postmortem
description: Runs a blameless post-incident or failed-launch review — reconstructs the timeline, finds the root cause (not just the trigger), assesses impact, and produces concrete follow-up actions with owners. Use after a production incident, outage, or launch that missed. Distinct from a sprint retro, which is about process.
argument-hint: <incident or failed launch details + timeline>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

When something breaks in production or a launch flops, this turns the scramble into learning. It rebuilds what happened and when, digs past the surface trigger to the real cause, quantifies the impact, and produces actions that prevent a recurrence — all without blaming individuals, so people tell the truth.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Walk me through the incident — what happened, when it started and ended, who was involved, and what the impact was. Share any logs, alerts, or chat threads."*

---

## Principles
- **Blameless.** Focus on systems and conditions, not people. "The deploy lacked a staging check," not "X pushed bad code." Blame buys silence; you want the truth.
- **Root cause, not trigger.** The trigger is what set it off; the root cause is why the system allowed it. Ask "why" until you reach something you can actually fix.
- **Impact in real terms.** Quantify it — users affected, duration, revenue, trust.
- **Actions, not regrets.** Every lesson becomes an owned, dated action or it didn't happen.

---

## How to run it

1. **Summarize** the incident in two or three sentences a stakeholder would understand.
2. **Reconstruct the timeline** — detection, escalation, diagnosis, mitigation, resolution. Note time-to-detect and time-to-resolve.
3. **Find the root cause** — use a "5 whys" chain from the trigger down to the systemic cause. There may be more than one contributing factor.
4. **Assess impact** — scope, duration, and cost.
5. **Identify what went well** — fast detection, a good rollback — so you keep it.
6. **Write follow-up actions** — preventers (stop it recurring) and detectors (catch it faster next time), each owned and dated.

---

## Output Format

### Postmortem — [Incident / Launch]
**Date of incident:** [Date] | **Severity:** [SEV1/2/3 or High/Med/Low] | **Author:** [Name]

#### Summary
[2-3 plain sentences: what happened and the impact.]

#### Impact
- Users affected: [N / %] · Duration: [time] · [Revenue / SLA / trust impact]

#### Timeline

| Time | Event |
|---|---|
| [t0] | [First symptom / what triggered it] |
| [t1] | [Detected — how] |
| [t2] | [Mitigated] |
| [t3] | [Resolved] |

**Time to detect:** [X] · **Time to resolve:** [Y]

#### Root cause
[The 5-whys chain ending in the systemic cause. List contributing factors separately.]

#### What went well
- [Keep doing this.]

#### Action items

| Action | Type | Owner | Due |
|---|---|---|---|
| [Fix] | Preventer / Detector | [Name] | [Date] |

#### Follow-up
[When this will be reviewed to confirm actions landed.]
