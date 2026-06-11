# PM Skills Sample

A sanitized public sample of a larger product-management skill library. This folder is intentionally a small downstream copy for evaluation and sharing.

## What's here

Each skill lives in `skills/<name>/SKILL.md` and defines one focused PM workflow: what it does, what input it needs, and the expected output format.

## Using the skills

**In any chat assistant:** copy the contents of a `SKILL.md` into the conversation, then provide your product context.

**In Claude Code-compatible agents:** `.claude/commands/<name>.md` wrappers expose the sample as slash commands.

**Routing:** start with `pm` when you are not sure which skill to use.

## Included skills

- `pm` - routes ambiguous product requests to the right skill
- `triage` - turns a messy request into a structured, PM-ready summary
- `discovery` - plans and synthesizes product discovery
- `prd` - writes a product requirements document
- `stories` - breaks work into user/job stories with acceptance criteria
- `risks` - builds a scored risk register with owners and triggers
- `release-check` - runs a formal go/no-go readiness gate
- `case-study` - captures what shipped, why it mattered, and what was learned

## Promotion workflow

1. Edit and test the complete skill library in a private workspace.
2. Copy only selected, sanitized skills into this folder.
3. Keep public docs focused on the sample, not the full operating system.
