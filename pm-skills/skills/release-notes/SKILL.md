---
name: release-notes
description: Turns tickets, PRDs, or changelogs into polished, user-facing release notes organized by category (new features, improvements, fixes, breaking changes). Leads with user benefit, not technical detail. Use when announcing a product update or writing a changelog.
argument-hint: <tickets, changelog, or list of what shipped>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Translates internal "what we did" into customer-facing "what you get." It groups changes by type and rewrites each one to lead with the benefit in plain language — no jargon, codenames, or ticket numbers.

## Input

$ARGUMENTS

*If no input is provided above, ask: "Paste the tickets, changelog, or list of what shipped, and tell me the product name, version/date, and audience (end users, developers, admins)."*

---

## How to write each entry

1. **Extract** what changed, who it affects, and why it matters.
2. **Categorize:** New Features / Improvements / Bug Fixes / Breaking Changes / Deprecations.
3. **Rewrite for the user:**
   - Lead with the benefit, not the implementation.
   - Plain language, 1-3 sentences each.
   - Breaking changes and deprecations must state the action the user needs to take.

**Example transformations:**
- "Implemented caching layer for dashboard endpoints" → "Dashboards now load up to 3× faster, so you spend less time waiting."
- "Fixed race condition in concurrent checkout" → "Fixed an issue where some orders could fail during high-traffic periods."

---

## Output Template

### [Product Name] — [Version / Date]

[Optional one-line intro setting the theme of this release.]

#### New Features
- **[Feature name]:** [What it does and why it matters.]

#### Improvements
- **[Area]:** [What's better now.]

#### Bug Fixes
- [Issue resolved, described by its user-visible effect.]

#### Breaking Changes
- **[Change]:** [What it is and exactly what action the user must take, by when.]

#### Deprecations
- **[Feature]:** [What's being sunset, the timeline, and the alternative.]
