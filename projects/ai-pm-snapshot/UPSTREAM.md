# Upstream: Erica-J-01/ai-pm

- **Source:** https://github.com/Erica-J-01/ai-pm
- **Snapshot date:** 2026-06-06
- **License:** MIT (see `LICENSE` in this folder)

## About

AI PM Assistant: chained Claude Code skills that turn raw stakeholder inputs into decision-ready artefacts — intake triage, risk scanning, PRDs, user stories, and sprint plans.

## Refresh procedure

```bash
git clone --depth 1 https://github.com/Erica-J-01/ai-pm.git /tmp/ai-pm-refresh
rsync -a --delete --exclude='.git' --exclude='UPSTREAM.md' /tmp/ai-pm-refresh/ ./ 
```

Review diffs before committing. Update the snapshot date above.
