---
name: ship-check
description: Audits a rapidly-built or AI-generated codebase before shipping. First documents what the app is supposed to do (architecture, flows, permissions, secrets, test map), then audits the gap between intended and actual behavior — the security and correctness bugs generic scanners miss. Use before shipping vibe-coded software.
argument-hint: <codebase or app to review>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

AI and rapid prototyping produce working code with no record of *intent* — what it's supposed to do, who's allowed to do what, where secrets live, which rules are actually enforced. Without that record, nobody can tell if it's safe to ship. This skill first writes the intent down, then audits the code against it to find the dangerous gaps.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Point me at the codebase or describe the app. Do you want me to document it first, audit it against existing docs, or both?"*

---

## Phase 1 — Document the intended state

Produce a small, honest set of docs (in `/documentation/`). A core set every app needs, plus conditional docs only where the capability exists.

**Core:**
- **architecture.md** — what the system is, the stack, how auth/sessions flow, the trust boundaries (e.g. server vs. client), and a short *known risks* list tied to where they appear in code.
- **flows.md** — the load-bearing journeys: actor + precondition + outcome, the step sequence across UI → server → data → jobs → external services, the authorization check at each protected step (and the expected *deny* case), and every trust-boundary crossing. Only include flows that touch permissions, data integrity, money, privacy, or side effects — this is a security map, not a feature spec.
- **permissions.md** — who can do what, on which resource.
- **variables.md** — environment variables and secrets, and what each gates.
- **tests.md** — the verification map: which rules above are actually covered by a test.

**Conditional** (only if present): scheduled jobs, outbound email, SEO, embedded agents/automation. If a capability is absent, write one honest line ("No scheduled work") rather than an empty doc.

Be accurate, not paranoid. The goal is a true map, not a clean bill of health.

## Phase 2 — Audit intended vs. implemented

The high-value bugs live in the gap between what the docs claim and what the code does — a permission documented but never enforced, a "cron-only" endpoint anyone can call, a field marked public that leaks private data.

Method:
1. **Establish intent** — treat the docs as claims to verify, not proof.
2. **Gather evidence** — read the code that enforces each claim. Evidence is a cited file and line — the actual check, query filter, or sanitizer. "Probably handled upstream" is not evidence.
3. **Compare claim to code, one boundary at a time** — does an enforcement point implement each rule, on the server, on every path? Distrust comments like "internal only" — verify in code.
4. Also scan for the usual suspects: secrets in source, missing authz on mutations, unvalidated input crossing a trust boundary, and obvious performance traps (N+1 queries, unbounded loops).

---

## Output Format

### Ship Readiness — [App]

#### Documentation produced
[List of docs created/updated, with the one-line "we don't do X" notes.]

#### Findings

| # | Severity | Claim / expectation | What the code actually does | Evidence (file:line) | Fix |
|---|---|---|---|---|---|
| 1 | Critical/High/Med/Low | [Documented rule] | [The gap] | [path:line] | [What to change] |

#### Verdict
**Ship / Fix-first / Do-not-ship** — [the must-fix items before this goes out.]
