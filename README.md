# AI-Assisted Product And Dev Workflow

This repo is a public snapshot of my AI-assisted product and development workflow: a small sample of PM skills, one case study artifact, and setup commands for agent-friendly CLI tools.

The full workflow has more private skills and experiments behind it. This repo is the shareable slice: enough to show how I think, structure product work, and connect PM artifacts to agentic development.

Open to PM, product strategy, AI workflow, and product-ops work. Contact: hello@griffinbaker.com.

## Stack snapshot

| Layer | Tools | Role |
|---|---|---|
| Model and agent base | OpenRouter, Codex | Model access, workspace execution, skill testing |
| PM workflow | PM skills | Intake, discovery, PRDs, stories, risk review, release readiness, case studies |
| Agent shell options | OpenCode | Alternate CLI surface for testing skills and workflows |
| Agent ergonomics | AXI tools, `gh-axi`, `chrome-devtools-axi` | GitHub and browser workflows designed for agents |
| Iteration and isolation | `gnhf`, `treehouse`, Git worktrees | Long-running improvement loops and isolated agent workspaces |
| Artifact review | `lavish-axi`, `lavish-themes`, `lavish-publish-cf` | HTML artifacts, visual review, and publishing |
| Instruction sync | Ruler | Shared rules and skills across agent surfaces |
| Free PM companions | GitHub Projects, NotebookLM, Granola/Fathom, Amplitude/Mixpanel | Tracking, research, meeting capture, and product analytics inputs |

See [`recommended-free-tools.md`](recommended-free-tools.md) for the free tools I would add around this stack.

## PM skills sample

`pm-skills/` contains a sanitized sample of a larger PM skill library. It is intended for evaluation and sharing, not as the complete working set.

Included sample skills:

- `pm` - routes ambiguous product requests to the right skill
- `triage` - turns messy intake into a structured PM summary
- `discovery` - plans and synthesizes product discovery
- `prd` - drafts a product requirements document
- `stories` - breaks work into stories and acceptance criteria
- `risks` - builds a scored risk register
- `release-check` - runs go/no-go release readiness
- `case-study` - captures what shipped, why it mattered, and what was learned

See [`pm-skills/README.md`](pm-skills/README.md) for usage.

## Case study

[`case-studies/helpflow-smart-assist.md`](case-studies/helpflow-smart-assist.md) is a prepared PM case study showing how the skills can turn a strategic AI add-on idea into a decision narrative, assumption map, validation plan, prioritization, PRD, roadmap, and launch framing.

## Agentic tool setup

[`setup-agentic-tools.sh`](setup-agentic-tools.sh) is a commands-only setup file for the `kunchenguid` AXI family and related agent workflow tools.
