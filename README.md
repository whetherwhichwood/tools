# tools

Shared tooling and skill libraries for Gritzo (OpenClaw) and Cursor workflows.

## PM skills (`pm-skills/`)

**37 optimized product-management skills** — the canonical set for Slack slash commands via Gritzo.

Gritzo loads them from a git clone (no copies inside the gritzo repo):

```json5
{
  skills: {
    load: {
      extraDirs: ["C:\\Users\\<you>\\.openclaw\\workspace\\repos\\tools\\pm-skills\\skills"]
    }
  }
}
```

After editing skills here, merge to GitHub, then in Slack: `/sync tools`.

### Commands (all use Codex via skill frontmatter)

| Domain | Skills |
|--------|--------|
| Intake & governance | `/triage`, `/risks`, `/charter`, `/decisions`, `/budget`, `/onboarding` |
| Discovery | `/discovery`, `/assumptions`, `/experiments`, `/north-star` |
| Requirements | `/prd`, `/stories`, `/okrs`, `/pre-mortem`, `/tech-review` |
| Sprint & release | `/sprint`, `/sprint-report`, `/release-check`, `/release-notes`, `/retro` |
| Communication & planning | `/stakeholder`, `/meeting`, `/roadmap`, `/prioritize` |
| Strategy & market | `/strategy`, `/research`, `/gtm`, `/metrics` |
| Analytics & specialties | `/analytics`, `/ship-check`, `/leadership`, `/pm` |
| Measure, ship & monetize | `/synthesis`, `/feedback`, `/postmortem`, `/rollout`, `/pricing` |

See [`pm-skills/README.md`](pm-skills/README.md) for full descriptions.

## Repos

- **Gritzo** (OpenClaw config + wrapper skills): [whetherwhichwood/gritzo](https://github.com/whetherwhichwood/gritzo)
- **App repos**: `website`, `bingo`, etc.
