---
name: rollout
description: Plans phased delivery of a feature — feature flag strategy, beta/early-access groups, staged percentage rollouts, monitoring, kill-switch criteria, and graduation to full availability. Use to bridge the gap between "the sprint is done" and "everyone safely has it."
argument-hint: <feature + audience, scale, and risk context>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Shipping to 100% of users on day one is a gamble. This skill designs a controlled release: who gets it first, how you widen exposure, what you watch at each step, and the exact conditions that trigger a rollback. It turns a risky launch into a series of reversible, observable steps.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What feature are you rolling out, to roughly how many users, and how risky is it (new infra? touches payments or data? user-visible change)? Do you have feature flags available?"*

---

## How to plan it

1. **Choose the mechanism.**
   - **Feature flag** — toggle the feature on for chosen users without a deploy; the default and safest.
   - **Percentage rollout** — flag to a growing % of traffic (e.g. 1% → 5% → 25% → 50% → 100%).
   - **Ring/cohort rollout** — internal → beta opt-in → friendly customers → everyone.
2. **Define the stages.** For each: who's included, how long it runs, and the gate to advance.
3. **Decide what to watch.** Per stage, the health metrics (error rate, latency, conversion, the feature's own success metric) and their baselines, so a regression is detectable.
4. **Set the kill switch.** The specific, pre-agreed conditions that trigger an immediate rollback — and who can pull it. Decide this *before* launch, when you're calm.
5. **Set graduation criteria.** What must be true to go to the next stage and, finally, to remove the flag and call it done.
6. **Plan the cleanup.** Flags are debt — name who removes the flag and when after full rollout.

---

## Output Format

### Rollout Plan — [Feature]
**Mechanism:** [Feature flag / Percentage / Ring] | **Flag name:** [`flag_name`] | **Owner:** [Name]

#### Stages

| Stage | Audience | % / cohort | Duration | Advance gate |
|---|---|---|---|---|
| 1 | Internal | — | [time] | [What must hold] |
| 2 | Beta opt-in | [%] | [time] | [Gate] |
| 3 | Broad | [%→%] | [time] | [Gate] |
| 4 | Full | 100% | — | [Gate] |

#### Monitoring per stage

| Metric | Baseline | Alert threshold |
|---|---|---|
| Error rate | [X] | [Y] |
| Latency | [X] | [Y] |
| [Feature success metric] | [X] | [Y] |

#### Kill switch
- **Trigger conditions:** [Specific, e.g. "error rate > 2%" or "checkout conversion drops > 5%"]
- **Who can pull it:** [Role] · **Rollback action:** [Flag off — effect is immediate]

#### Graduation & cleanup
- **Full rollout when:** [Criteria]
- **Flag removed by:** [Owner] within [timeframe] after 100%.
