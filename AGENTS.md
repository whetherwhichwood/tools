# AGENTS.md

Guidance for cloud agents working in this monorepo.

## Repository layout

This workspace contains three independent PM-tooling snapshots under `projects/`:

| Path | Product | Runnable surface |
|------|---------|------------------|
| `projects/ai-pm-snapshot/` | AI PM Assistant (18 skills + slash commands) | React dashboard in `dashboard/` |
| `projects/pm-skills-snapshot/` | PM Skills Marketplace (9 plugins, 68 skills) | Validation only (`validate_plugins.py`) |
| `projects/product-manager-skills-snapshot/` | Product Manager Skills (49 skills) | Streamlit playground in `app/` |

There is no shared backend, database, or docker-compose stack. Skills are markdown-first; the two UIs are optional demos/playgrounds.

## Cursor Cloud specific instructions

### Prerequisites

- **Node.js 22+** and **npm** for the AI PM dashboard
- **Python 3.12+** for validation scripts and the Streamlit app
- **Bash** for shell-based validators

Ensure `~/.local/bin` is on `PATH` after pip installs (Streamlit lands there with `--user` installs).

### Dependency refresh (automatic on VM startup)

The update script installs dashboard npm deps and Streamlit Python deps. See the configured VM update script in Cursor Cloud settings.

### Validation (no servers required)

Run these from the repo root to verify skill libraries structurally:

```bash
cd projects/ai-pm-snapshot && bash tests/check-skills.sh
cd projects/pm-skills-snapshot && python3 validate_plugins.py
cd projects/product-manager-skills-snapshot && ./scripts/test-library.sh
```

`test-library.sh` regenerates `catalog/` files; avoid committing those unless catalog changes are intentional.

### AI PM dashboard (Vite + React)

```bash
cd projects/ai-pm-snapshot/dashboard
npm ci
npm test -- --run          # Vitest (65 tests)
npm run build              # tsc + vite build
npm run dev -- --host 0.0.0.0 --port 5173
```

- Default port: **5173**
- Uses **mock orchestrator** data — no backend or API keys needed for UI work
- No ESLint script in `package.json`; linting is not configured as a standalone npm task
- `vite.config.ts` sets `server.open: true`; in headless/cloud VMs pass `--host 0.0.0.0` and do not rely on auto-open
- Optional real API: `VITE_USE_REAL_API=true` + `VITE_API_BASE_URL` (stub only in repo)

### Product Manager Skills Streamlit playground

```bash
cd projects/product-manager-skills-snapshot
python3 -m pip install -r app/requirements.txt
streamlit run app/main.py --server.headless true --server.address 0.0.0.0 --server.port 8501
```

- Default port: **8501**
- **Learn** and **Find My Skill** modes work without API keys
- **Run Skills** requires `ANTHROPIC_API_KEY` and/or `OPENAI_API_KEY` in `app/.env` (copy from `app/.env.example`)

### Long-running dev servers

Use tmux for Vite and Streamlit so sessions survive backgrounding:

```bash
tmux -f /exec-daemon/tmux.portal.conf new-session -d -s vite-dashboard -c projects/ai-pm-snapshot/dashboard
tmux -f /exec-daemon/tmux.portal.conf send-keys -t vite-dashboard:0.0 'npm run dev -- --host 0.0.0.0 --port 5173' C-m

tmux -f /exec-daemon/tmux.portal.conf new-session -d -s streamlit-playground -c projects/product-manager-skills-snapshot
tmux -f /exec-daemon/tmux.portal.conf send-keys -t streamlit-playground:0.0 'export PATH="$HOME/.local/bin:$PATH"; streamlit run app/main.py --server.headless true --server.address 0.0.0.0 --server.port 8501' C-m
```

Health checks: `curl -s -o /dev/null -w '%{http_code}\n' http://127.0.0.1:5173/` and `:8501/` should return `200`.

### PM Skills Marketplace

Markdown-only plugin collection. No web app. Validate with:

```bash
cd projects/pm-skills-snapshot && python3 validate_plugins.py
```

### Gotchas

- **`npm run build`** in the dashboard emits `tailwind.config.js` / `vite.config.js` siblings from `tsc -b`; they are gitignored artifacts — do not commit them
- **`test-library.sh`** rewrites `catalog/` — revert or commit deliberately
- Claude Code / Anthropic API keys are optional; only needed for live LLM skill execution outside the two local UIs
- Reinstalling npm deps while Vite is running may require restarting the dev server for changes to apply reliably

### Per-project agent docs

- `projects/ai-pm-snapshot/CLAUDE.md` — AI PM Assistant behavior and commands
- `projects/pm-skills-snapshot/AGENTS.md` — Marketplace maintainer guidance
- `projects/product-manager-skills-snapshot/AGENTS.md` — Product Manager Skills conventions
