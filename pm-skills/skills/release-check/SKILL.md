---
name: release-check
description: Runs a structured go/no-go assessment before a release. Evaluates readiness across feature completeness, testing, operations, communications, dependencies, and approvals, then gives a clear GO / NO-GO / CONDITIONAL GO verdict with a blocker list. Use before any production release — planned, hotfix, or phased rollout.
argument-hint: <release details: name, type, date, scope, team>
---

## What this does

Decides whether a release is actually ready to ship. Every item is a decision point, not a formality — the goal is to surface blockers and unresolved questions before they become production incidents. The output ends in one clear verdict, never "mostly ready."

## Input

$ARGUMENTS

*If no input is provided above, ask: "Share the release details — name/version, type (planned/hotfix/phased), target date, features or tickets included, and the team (PM, tech lead, QA lead, ops lead)."*

---

## Operating principles
1. Every NO or RISK item is a potential blocker until confirmed otherwise.
2. A CONDITIONAL GO is still a commitment — every condition needs an owner and deadline.
3. Don't paper over gaps. If something can't be confirmed, mark it UNCONFIRMED.
4. Prioritize by production impact — a missing rollback plan matters more than a flaky unit test.
5. The checklist belongs to the PM — if you can't answer an item, you're not ready for the go/no-go meeting.

## Adjust by release type
- **Planned release:** all 7 categories
- **Hotfix:** focus on testing, rollback, approvals; skip internal comms
- **Phased / flagged rollout:** add flag config and rollout percentage to Feature Readiness; add monitoring ramp criteria to Operations

## Item statuses
PASS (confirmed) · FAIL (blocker) · RISK (done, with a flagged concern) · N/A · UNCONFIRMED (can't verify). Never mark PASS without confirmation.

---

## Checklist categories

**1. Feature readiness** — all in-scope stories Done; nothing in-progress/blocked in scope; code merged and build green; feature flags configured; migrations reversible; breaking API changes versioned.

**2. Testing** — unit/integration tests passing; QA sign-off (named); regression run; acceptance edge cases verified; performance test if high-traffic; security review if auth/payments/data; staging validated.

**3. Operational readiness** — monitoring/alerting for new functionality; baselines documented; runbook exists; rollback plan documented and reviewed; on-call confirmed for the window + 24h; infra scaled if load increases.

**4. Communications** — internal release notes shared; support briefed; customer comms drafted if customer-facing; affected customers notified of breaking changes; stakeholders told of date and scope.

**5. Dependencies** — third-party services verified operational; vendor changes confirmed; cross-team sign-offs; config/secrets deployed; DNS/CDN/infra pre-staged.

**6. Approvals** — PM, tech lead, QA lead sign-offs (named); sponsor if required; legal/compliance if regulated; security if new access patterns.

**7. Post-release readiness** — success metrics defined; monitoring checks scheduled at 30 min / 2 h / 24 h; retro scheduled for major releases; known issues ticketed, not forgotten.

## Verdict rules
- **GO** — zero FAILs, zero UNCONFIRMEDs, all RISKs acknowledged
- **NO-GO** — one or more FAILs, or critical UNCONFIRMEDs that can't be resolved in time
- **CONDITIONAL GO** — zero FAILs, but UNCONFIRMEDs or RISKs each with a resolution plan, owner, and deadline

---

## Output Format

### Release Go / No-Go — [Name or version]
**Type:** [Planned / Hotfix / Phased] | **Target:** [Date, time, tz] | **Assessed by:** [PM] | **Date:** [Today]

#### Checklist
For each applicable category, list items with status (PASS/FAIL/RISK/N/A/UNCONFIRMED) and a note.

#### Blockers (FAIL + critical UNCONFIRMED)

| # | Item | Status | Owner | Needed by |
|---|---|---|---|---|
| B1 | [Item] | FAIL | [Role] | [Date] |

#### Conditions (for CONDITIONAL GO)

| Condition | Owner | Deadline |
|---|---|---|

#### Verdict
**GO / NO-GO / CONDITIONAL GO** — [one sentence on the decisive factor.]

---

## After generating

If the verdict is GO, suggest `rollout` or `release-notes` as the next operational step, or `case-study` if the work has already shipped and the user wants to capture learning. If the verdict is CONDITIONAL GO or NO-GO, suggest `risks` or `stakeholder` depending on whether the next need is mitigation or communication. Ask for confirmation before continuing.
