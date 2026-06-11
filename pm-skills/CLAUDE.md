# PM Skills Sample

This is a sanitized public sample of a larger PM skill library. Treat `skills/<name>/SKILL.md` as the source for each included workflow.

## How it works

When the user's request matches a skill description, load the matching `SKILL.md` and follow it. If the request is ambiguous, load `skills/pm/SKILL.md` first and let it route.

## Skill map

| Phase | Skills |
|---|---|
| Routing | `pm` |
| Intake | `triage`, `risks` |
| Discovery | `discovery` |
| Requirements | `prd`, `stories` |
| Release and learning | `release-check`, `case-study` |

## Conventions

- Produce markdown by default.
- Ask one focused question if required context is missing.
- After finishing a skill, suggest the single best next skill and at most one alternative.
