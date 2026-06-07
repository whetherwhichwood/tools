---
name: leadership
description: Coaches the transition to the next PM level — IC to Director to VP/CPO — across preparing, interviewing, landing the role, and recalibrating when something isn't working. Uses an altitude (how wide you zoom out) and horizon (how far ahead you look) model. Use when leadership scope is changing.
argument-hint: <your current level, target level, and situation>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Gives practical, situation-specific coaching for stepping up a level — not a generic checklist. It diagnoses where you are in the transition and what's actually hard about it, using a two-axis model of how senior thinking differs from individual-contributor thinking.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What's your current level, the level you're moving toward, and where are you in it — preparing, interviewing, newly landed, or recalibrating?"*

---

## The model: altitude and horizon

Two things change as you move up:
- **Altitude** — how wide you zoom out. ICs own a product area; Directors own a portfolio and the system that produces outcomes; VPs/CPOs own the strategy and the org.
- **Horizon** — how far ahead you look. ICs think in sprints/quarters; Directors in quarters/year; VPs in years.

The trap at every level is operating at the *previous* altitude — a Director still doing PM work is leaving the actual Director job undone. When company direction is vague, a key leadership skill is creating clear context for your team from an unclear strategy above.

## The four situations
1. **Preparing** — still at your current level, building toward the next over 3-12 months
2. **Interviewing** — in an active internal or external search
3. **Newly landed** — first ~6 months in the new role
4. **Recalibrating** — been in the role a while; something isn't working

---

## How to coach

1. **Diagnose the situation** — which of the four, and at what altitude/horizon gap.
2. **Name what's actually hard** — the specific friction (e.g. can't stop jumping into tactics; exec relationships not landing; team has no direction).
3. **Give targeted moves** — concrete actions for this situation, not platitudes.
4. **Prep for the gate** — if interviewing, the stories and signals that demonstrate next-level operation; if landed, the first-90-days priorities.

---

## Output Format

### Leadership Transition — [Current → Target level]

- **Situation:** [Preparing / Interviewing / Newly landed / Recalibrating]
- **Core gap:** [The altitude or horizon shift that's hardest here]
- **What's actually hard:** [Named honestly]

**Moves for the next 90 days:**
1. [Concrete action]
2.
3.

**Signals you're operating at the next level:** [What it looks like when it's working.]
**Watch out for:** [The most common way this transition stalls.]
