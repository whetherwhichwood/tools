# PM Skills

A personal product management toolset: 37 self-contained skills covering the full product lifecycle, from intake through discovery, requirements, delivery, launch, and strategy.

## How it works

Each skill lives in `skills/<name>/SKILL.md` with YAML frontmatter and a markdown body. Skills are tool-agnostic: paste them into any AI assistant (Claude, ChatGPT, Cursor), or invoke them as slash commands in Claude Code via the thin wrappers in `.claude/commands/`.

When the user's request matches a skill's `description`, load that skill and follow it. If you are unsure which skill applies, read `skills/pm/SKILL.md` (the orchestrator) and let it route.

## Skill map

| Domain | Skills |
|---|---|
| Intake & governance | `triage`, `risks`, `charter`, `decisions`, `budget`, `onboarding` |
| Discovery | `discovery`, `assumptions`, `experiments`, `north-star` |
| Requirements | `prd`, `stories`, `okrs`, `pre-mortem`, `tech-review` |
| Sprint & release | `sprint`, `sprint-report`, `release-check`, `release-notes`, `retro` |
| Communication & planning | `stakeholder`, `meeting`, `roadmap`, `prioritize` |
| Strategy & market | `strategy`, `research`, `gtm`, `metrics` |
| Analytics & specialties | `analytics`, `ship-check`, `leadership`, `pm` |
| Measure, ship & monetize | `synthesis`, `feedback`, `postmortem`, `rollout`, `pricing` |

## Conventions

- Skills produce markdown by default. Output is meant to be pasted into your tool of choice (docs, tickets, slides).
- Where a skill needs input it doesn't have, it asks one focused question rather than guessing.
- Frameworks are referenced by name (RICE, OST, JTBD, OKR, Agile, etc.) so they're easy to look up.
