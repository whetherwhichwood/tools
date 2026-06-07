---
name: onboarding
description: Brings a new team member up to speed on an in-flight project by synthesizing existing artifacts and context into a single starter brief, tailored to their role. Use when someone is joining a project mid-stream and needs the essentials fast.
argument-hint: <project + the joiner's role>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Gets a new joiner productive fast. It pulls together what already exists — charter, PRD, current sprint, decisions, risks — into a one-page orientation tailored to whether they're an engineer, designer, QA, or PM.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Which project is the new person joining, and what's their role (dev, QA, PM, designer)? Share the key artifacts (charter, PRD, current sprint) and I'll build a starter brief."*

---

## What to gather first

1. Collect the project's existing artifacts: latest charter, PRD, risk register, and current sprint plan.
2. If documents aren't available, work from whatever the user provides — don't invent.
3. Confirm the joiner's role to set emphasis (engineers → tech + stories; PMs → stakeholders + risks + status).

---

## Output Template

### Onboarding Brief — [Project] for [Role]
**Prepared:** [Today] | **Current phase:** [Phase]

#### In one paragraph
[What this project is, who it's for, and why it exists. Plain English.]

#### Where we are now
- Phase: [Phase] | Current sprint: [N] — [goal]
- Status: On track / Watch / At risk — [one line]
- Last artifact: [name]

#### Who's who

| Name / Role | What they own | When to go to them |
|---|---|---|
| [Sponsor] | Budget, final calls | [Escalations] |
| [Tech lead] | Architecture | [Technical decisions] |

#### What to read first (in order)
1. [Charter — the why and the scope]
2. [PRD — what we're building]
3. [Current sprint plan]

#### Key decisions already made
- [From the decision log — what was decided and why, so the joiner doesn't reopen settled questions]

#### Live risks & open questions

| Item | Why it matters |
|---|---|
| [Risk/question] | [Impact] |

#### Role-specific starting points
- [First tickets, environments, access needed, who to pair with — tailored to the role]

#### First-week checklist
- [ ] [Access / accounts needed]
- [ ] [Read the three docs above]
- [ ] [Intro to key stakeholders]
- [ ] [First task / shadowing]
