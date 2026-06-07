---
name: gtm
description: Plans go-to-market — launch strategy, ideal customer profile, first target segment, marketing channels, messaging, growth loops, and competitive battlecards. Use when planning a launch, entering a new market, or building the materials a sales/marketing team needs to win.
argument-hint: <product, target market, and launch context>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Turns "we built it" into "people will find it, buy it, and tell others." It defines who to target first, how to reach them, what to say, how growth compounds, and how to win head-to-head against competitors.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Describe the product, the target market, and the launch context. Which piece do you need — full GTM plan, ideal customer profile, first target segment, growth loops, or a competitive battlecard?"*

---

## Components

### Ideal Customer Profile (ICP)
The customer most likely to find value, retain, and expand. Capture firmographics (size, industry), the buyer and user roles, their job-to-be-done, and the trigger that makes them buy.

### First target segment
Before going broad, win one beachhead segment. Score candidates on: burning pain (acute, unmet), willingness to pay, a market you can realistically win, and whether success there opens adjacent segments.

### GTM strategy
- **Channels** — which reach the ICP best: product-led/viral, content/SEO, paid, outbound/partnerships, community
- **Messaging** — core value prop, key differentiators, pain→solution mapping, proof points
- **Motion** — self-serve, sales-led, or hybrid; who does what
- **Metrics** — what "launched well" looks like in the data
- **Timeline** — pre-launch, launch, post-launch milestones

### Growth loops
Design self-reinforcing loops so growth doesn't depend only on paid spend:
- **Viral** — users create shareable output that pulls in new users
- **Usage** — using the product makes it more valuable (data, network)
- **Referral** — incentivized invites
- **User-generated content** — content that attracts new users via search/social
- **Collaboration** — inviting teammates is core to the workflow

### Competitive battlecard
For a specific competitor: overview, where we win, where they win, feature comparison, objection handling ("why not them?"), and landmines to avoid. Sales-ready and concise.

---

## Output Format

Deliver the requested component(s). Always end with:

**Where to focus first:** [The single highest-leverage GTM move for this launch.]
**Riskiest GTM assumption:** [What must be true about reach or conversion that hasn't been proven.]
