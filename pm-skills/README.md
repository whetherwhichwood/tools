# PM Skills

A personal, tool-agnostic product management toolset. 37 self-contained skills that turn an AI assistant into a capable PM collaborator across the full product lifecycle.

## What's here

Each skill is a single markdown file (`skills/<name>/SKILL.md`) that defines a focused PM task: what it does, what input it needs, and the exact output format. Skills are written in plain language at the top so anyone can understand what each one does, with the technical depth in the body.

## Using the skills

**In any chat assistant (ChatGPT, Claude, Cursor):** copy the contents of a `SKILL.md` into the conversation, then provide your input.

**In Claude Code:** the toolset doubles as a slash-command pack. `.claude/commands/<name>.md` wrappers map `/triage`, `/prd`, `/sprint`, etc. to each skill. Point Claude Code at this folder and the commands become available.

**Routing:** not sure which skill to use? Use `pm` (the orchestrator) — describe your situation and it points you to the right skill.

## The 37 skills

### Intake & governance
- `triage` — turn a messy request into a structured, PM-ready summary
- `risks` — build a scored risk register with owners and triggers
- `charter` — write a sponsor-ready project charter
- `decisions` — log decisions and changes for an audit trail
- `budget` — track spend against budget and forecast burn
- `onboarding` — produce a starter brief for someone joining a project

### Discovery
- `discovery` — plan and synthesize product discovery
- `assumptions` — surface and rank the risky assumptions behind an idea
- `experiments` — design cheap experiments to test those assumptions
- `north-star` — define a single leading success metric

### Requirements
- `prd` — write a product requirements document
- `stories` — break work into user/job stories with acceptance criteria
- `okrs` — draft objectives and key results
- `pre-mortem` — imagine the failure before it happens and plan against it
- `tech-review` — translate technical feasibility into PM-readable terms

### Sprint & release
- `sprint` — build a capacity-aware sprint plan
- `sprint-report` — analyze velocity and completion
- `release-check` — run a formal go/no-go readiness gate
- `release-notes` — write user-facing release notes
- `retro` — run a sprint retrospective with owned actions

### Communication & planning
- `stakeholder` — status updates and stakeholder mapping
- `meeting` — turn notes/transcripts into decisions and actions
- `roadmap` — build a Now/Next/Later or outcome roadmap
- `prioritize` — rank work using the right framework for the situation

### Strategy & market
- `strategy` — set product strategy and positioning
- `research` — personas, journeys, JTBD, market sizing, competitors
- `gtm` — plan a launch and go-to-market
- `metrics` — diagnose SaaS business health for leadership

### Analytics & specialties
- `analytics` — write queries, analyze cohorts and A/B tests
- `ship-check` — audit a rapidly-built codebase before shipping
- `leadership` — assess readiness for the next PM level
- `pm` — orchestrator that routes you to the right skill

### Measure, ship & monetize
- `synthesis` — turn raw research into structured insights
- `feedback` — triage the continuous stream of customer signal
- `postmortem` — review an incident or failed launch
- `rollout` — plan phased delivery with flags and kill switches
- `pricing` — design pricing and packaging

## Customizing

These skills are a starting point. Edit any `SKILL.md` to match your company's templates, terminology, and process. The structure is intentionally simple so you can make it your own.
