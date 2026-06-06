# Upstream: deanpeters/Product-Manager-Skills

- **Source:** https://github.com/deanpeters/Product-Manager-Skills
- **Snapshot date:** 2026-06-06
- **License:** See `LICENSE` in this folder

## About

Product Management skills framework built on battle-tested methods for Claude Code, Cowork, Codex, and AI agents.

## Refresh procedure

```bash
git clone --depth 1 https://github.com/deanpeters/Product-Manager-Skills.git /tmp/pms-refresh
rsync -a --delete --exclude='.git' --exclude='UPSTREAM.md' /tmp/pms-refresh/ ./
```

Review diffs before committing. Update the snapshot date above.
