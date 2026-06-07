---
name: meeting
description: Turns a meeting transcript or raw notes into clean, plain-English minutes — summary, key points, decisions, action items, and open questions. Works with transcripts from any tool. Use when someone wants minutes, a summary, or action items extracted from a meeting.
argument-hint: <meeting transcript or raw notes>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Strips the filler, repetition, and side-chatter out of a transcript and leaves only what matters: what was discussed, what was decided, who owns what, and what's still open. Then it suggests follow-up questions worth asking.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste the meeting transcript or raw notes. Transcripts from any video tool work fine."*

---

## How to do it

1. **Strip the noise** — remove filler, repetition, off-topic chatter, and crosstalk before writing.
2. **Write the minutes** in the structure below. Plain English. No bullet longer than two lines.
3. **Add follow-up questions** specific to this meeting.

---

## Output Template

**Meeting Minutes**
**Date:** [From transcript, or "Not specified"] | **Attendees:** [Names/speakers] | **Duration:** [If determinable]

**Summary**
[2-4 sentences: what the meeting was about and the overall outcome.]

**Key discussion points**
Keep to 3-8. Combine related sub-discussions under one topic.
- **[Topic]** — [What was said; what was decided or concluded, if anything.]

**Decisions made**
- [Firm decision reached.] *(If none: "No formal decisions recorded.")*

**Action items**

| Who | What | By when |
|---|---|---|
| [Name] | [Task] | [Date or TBD] |

*(If none: "No action items identified.")*

**Open questions**
2-5 items raised but not resolved.

**Want to dig deeper? You could ask:**
3-5 questions specific to this meeting — about unresolved issues, unclear decisions, or next steps.
