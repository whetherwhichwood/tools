# Upstream: phuryn/pm-skills

- **Source:** https://github.com/phuryn/pm-skills
- **Snapshot date:** 2026-06-06
- **License:** See `LICENSE` in this folder

## About

PM Skills Marketplace: 100+ agentic skills, commands, and plugins — from discovery to strategy, execution, launch, and growth.

## Refresh procedure

```bash
git clone --depth 1 https://github.com/phuryn/pm-skills.git /tmp/pm-skills-refresh
rsync -a --delete --exclude='.git' --exclude='UPSTREAM.md' /tmp/pm-skills-refresh/ ./
```

Review diffs before committing. Update the snapshot date above.
