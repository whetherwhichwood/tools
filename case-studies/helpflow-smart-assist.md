# HelpFlow Smart Assist: PM Case Study, Whitepaper, and PRD

**Date:** 2026-06-11  
**Status:** Draft case study and planning artifact  
**Author:** Griffin Baker  
**Scenario source:** Product case-study exercise  
**Skills used:** pm, triage, assumptions, experiments, risks, prioritize, pricing, gtm, stakeholder, prd, roadmap, case-study  

## 1. Executive Summary

HelpFlow is a $12M ARR B2B SaaS company selling a customer support platform to SMBs. The core product is healthy, but annual churn is 12%, NRR is roughly 102%, and sales is seeing competitive pressure from AI-enabled support tools. Leadership wants an AI-powered paid add-on called **Smart Assist** to increase expansion revenue and improve retention.

The recommended path is to launch Smart Assist as a controlled beta for existing high-volume Pro and lower-Enterprise customers, with a focused v1 scope: AI-generated draft replies, tone modification, ticket summarization, admin controls, safety guardrails, and analytics. The product should remain human-reviewed in v1. Full automation, multilingual support, and deep brand-persona customization should stay out of scope until quality, trust, and unit economics are proven.

The core PM decision is to treat Smart Assist as an expansion wedge, not a complete churn cure. Moving NRR from 102% to 110% on $12M ARR implies roughly $960K of additional net retained ARR. A realistic year-1 base case for Smart Assist alone is closer to $60K-$200K incremental ARR from paid attach, with an upside case of $240K-$675K if attach and pricing both outperform. That means Smart Assist can contribute meaningfully to the NRR goal, but leadership should not count it as the only retention strategy until renewal evidence exists.

**Recommendation:** Proceed to beta, but gate GA on four proofs:

- Customers use it weekly after novelty fades.
- Support managers trust the outputs enough to make it part of workflow.
- Customers commit to paying for it.
- Gross margin remains viable under real usage.

## 2. PM Workflow Trace

### Router Read

**Need:** Convert a strategic AI add-on idea into a defensible product case, including the business rationale, validation plan, PRD, expected outcomes, and stakeholder narrative.

**Recommended sequence used:** triage -> assumptions -> experiments -> risks -> pricing -> gtm -> stakeholder -> prd -> roadmap -> case-study.

**Why this sequence:** The input is not just a feature brief. It mixes company strategy, competitive pressure, product scope, pricing, trust risk, and launch planning. Starting with a PRD would overstate certainty. The right path is to identify what is known, name the risky assumptions, design validation, then write requirements and the case study.

## 3. Requirement Intake Summary

**Request summary:** Build and evaluate Smart Assist, an AI-powered paid add-on for HelpFlow that helps support agents draft replies, adjust tone, and summarize tickets.

**Likely business goal:** Improve expansion revenue and retention by closing a competitive AI gap and creating a monetizable productivity module.

**Primary stakeholder need:** Support teams need faster, more consistent replies without losing control over quality, policy compliance, or customer trust.

**What is clear:**

- HelpFlow serves SMB customers with 10-200 support agents.
- Current ARR is $12M.
- Annual churn is 12%.
- NRR is about 102%.
- Leadership wants NRR to reach 110% within 12 months.
- Sales is losing deals because HelpFlow appears dated and lacks AI assist.
- v1 scope includes auto-draft replies, tone modifiers, summarization, guardrails, and analytics.
- Full auto-response, multilingual support, and deep persona customization are out of scope for v1.

**Missing information:**

- Current Pro vs. Enterprise ARR mix.
- Account count, ARPA, and seat distribution.
- Baseline first-response time, handle time, CSAT, and macro usage.
- Churn reasons by segment and cohort.
- Actual competitor win/loss volume attributable to AI.
- Third-party LLM cost per workflow.
- Customer data-processing requirements.
- Willingness to pay by segment.

**Intake classification:** New paid module / retention and expansion initiative.

**Recommended next step:** Run a gated beta with explicit paid-conversion, workflow-value, quality, privacy, and margin thresholds before GA.

## 4. Decision Narrative

### The Decision

Proceed with a Smart Assist beta for existing high-volume Pro and lower-Enterprise customers, but do not commit to broad GA, final pricing, or NRR impact claims until beta gates are met.

### Why This Is the Right Bet

HelpFlow has a strategic reason to build AI assistance: the market now expects support tooling to reduce repetitive writing and speed up agent workflows. If HelpFlow does not respond, it risks both sales loss and retention erosion. The feature also has a natural monetization path because the buyer can connect it to labor productivity.

The risk is that "AI" can become a vague strategy wrapper. The disciplined version of the bet is narrower: prove that HelpFlow can help agents respond faster while preserving human review, customer trust, and gross margin.

### What We Are Choosing Not To Do

- Not launching a full auto-responder in v1.
- Not claiming churn reduction from a short beta.
- Not using pure usage-based pricing as the lead package.
- Not over-customizing tone/personality before basic utility and trust are proven.
- Not making Smart Assist the entire NRR strategy.

### Decision Gates

| Gate | Required Signal | Decision If Met | Decision If Missed |
|---|---|---|---|
| Adoption | >=60% of active pilot agents use Smart Assist weekly; >=30% of eligible tickets touched | Continue to GA readiness | Fix workflow/onboarding or narrow segment |
| Productivity | >=15% first-response-time improvement vs. baseline/matched control | Use in ROI story | Reposition or reconsider v1 value |
| Trust | >=95% outputs pass human review without material correction; zero P0/P1 incidents | Expand beta | Halt expansion until quality improves |
| Willingness to pay | >=30% activated pilot accounts commit to paid add-on or renewal inclusion | Finalize packaging | Rework pricing, bundle, or stop paid add-on |
| Unit economics | Gross margin remains within finance-approved add-on target under real usage | Approve pricing | Add usage caps, routing, or repricing |

## 5. Assumption Map

| # | Assumption | Category | Confidence | Impact | Risk | Verdict | Suggested Test |
|---|---|---|---|---|---|---|---|
| A1 | Agents will use AI drafts in real ticket workflows, not just demo them once | Value / Usability | Medium | High | High | Test now | Production beta usage instrumentation |
| A2 | Support managers will trust human-reviewed AI enough to enable it for teams | Value / Trust | Medium | High | High | Test now | Manager interviews plus output audit sampling |
| A3 | Customers will pay separately for Smart Assist | Viability | Low-Med | High | High | Test now | Paid pilot conversion ask |
| A4 | AI assistance can improve response time without hurting CSAT | Value | Medium | High | High | Test now | Matched pilot/control comparison |
| A5 | Third-party LLM costs can support add-on margins | Viability | Low | High | High | Test now | Unit cost telemetry during beta |
| A6 | Current churn is meaningfully affected by lack of AI | Strategy | Low | High | High | Test now | Churn/win-loss analysis by segment |
| A7 | Admin controls and human review are sufficient for SMB compliance expectations | Security / Trust | Medium | Medium | Medium | Proceed with validation | Legal/security review and beta DPA |
| A8 | Summarization and tone controls add enough value to justify v1 inclusion | Value | Medium | Medium | Medium | Proceed | Feature-level usage and satisfaction |

**Test first:** A3, A5, and A6. The biggest blind spot is whether Smart Assist solves the churn problem leadership cares about, or mostly addresses expansion and sales competitiveness.

## 6. Whitepaper: Smart Assist as a Practical AI Expansion Wedge

### Abstract

Support teams at SMBs face rising ticket volume, tighter cost pressure, and increasing expectations for fast, consistent customer replies. AI-assisted workflows can reduce repetitive writing, improve handoffs, and make support teams more productive. For HelpFlow, Smart Assist is an opportunity to close a competitive gap and create a paid expansion module, provided the company validates adoption, trust, willingness to pay, and margin before broad launch.

### Market Context

The customer support software category is shifting from systems of record to systems of assistance. Shared inboxes, routing, SLA rules, and basic reporting are now table stakes. Buyers increasingly expect AI to help agents draft responses, summarize conversations, and maintain consistent tone. In sales conversations, HelpFlow is already encountering objections that it looks dated compared with AI-enabled competitors.

This does not mean HelpFlow should chase every AI use case. SMB support teams are pragmatic. They need faster work, less repetitive typing, fewer mistakes during handoffs, and measurable operational improvement. The winning product will not be the one with the broadest AI claims; it will be the one that fits naturally into the agent workflow while giving managers enough control to trust it.

### Problem

Support agents spend significant time writing repetitive replies and catching up on long conversations. Managers spend time coaching tone, enforcing policy, and reviewing inconsistent responses. Buyers want productivity gains, but they are wary of AI that sends incorrect or off-brand answers.

The business problem is related but not identical: HelpFlow has a flat NRR profile and rising churn pressure. Smart Assist can help by driving expansion and improving competitiveness, but a short beta cannot prove churn reduction. Churn is a lagging outcome that depends on renewal timing, core product health, support quality, pricing, and switching costs.

### Product Thesis

Smart Assist should focus on **human-reviewed assistance** rather than automation. The agent remains in control. AI helps create a first draft, adjust tone, and summarize context, but humans decide what is sent to customers.

This framing lowers trust risk, makes the product easier to adopt, and creates a measurable value story:

- Agents spend less time writing repetitive responses.
- Managers see more consistent tone and policy adherence.
- Buyers can connect the module to faster replies and lower operating cost.
- HelpFlow creates a paid add-on without requiring a complete platform rebuild.

### Recommended V1

V1 should include:

- Generate reply button in the ticket editor.
- Draft generation using current ticket, last five messages, and relevant knowledge base snippets.
- Tone modifiers: more formal, more concise, more friendly.
- Conversation summarization for handoffs and escalations.
- Admin enable/disable controls by team.
- AI-generated content banner requiring human review.
- Analytics for usage, edit distance, and before/after response-time comparison.

V1 should exclude:

- Fully automated customer replies.
- Multilingual support.
- Deep brand/persona customization.
- Autonomous policy enforcement.
- AI quality scoring as a manager performance tool.

### Packaging and Pricing Recommendation

Use a hybrid packaging model:

- **Pro:** per-seat add-on with generous usage allowance and soft usage guardrails.
- **Enterprise:** bundled/custom AI package with higher limits, admin controls, analytics, security review, auditability, and SLA commitments.

Pure usage-based pricing should not lead the GTM motion. SMB buyers value predictable spend, and usage metering may discourage the very behavior HelpFlow wants to drive. Usage data should still protect margins through fair-use caps, overage tiers, or package limits.

### GTM Recommendation

Start with existing Pro and lower-Enterprise customers that have:

- 5-50 active support agents.
- High repetitive ticket volume.
- Existing use of macros, templates, or help center content.
- Clear pressure on first response time, handle time, CSAT, or backlog.
- A support manager willing to sponsor workflow change.

The first motion should be customer-success-assisted expansion, not broad self-serve launch. CSMs can recruit beta customers, help configure workflows, and create the ROI narrative from real usage. Sales should receive a competitive battlecard, but public claims should stay conservative until beta data is available.

### Technical and Security Approach

Use a third-party LLM provider for v1 to reduce time to market. Keep the integration deliberately constrained:

- Send only required ticket text, recent conversation context, and relevant knowledge snippets.
- Truncate content where possible.
- Do not send unnecessary metadata.
- Log prompt and response IDs, not full content, by default.
- Provide configurable retention and admin controls.
- Complete DPA/vendor review before expanding beyond beta.
- Build a kill switch for tenant-level and global disablement.

### Validation Plan

The beta should answer one primary question: **Will SMB support teams use Smart Assist, trust it, and pay for it without harming support quality or margin?**

| Area | Design |
|---|---|
| Target sample | Invite 40-60 existing SMB accounts; minimum 25 activated pilot accounts |
| Segmenting | Stratify by ticket volume, segment, and account health |
| Control | Use 15-25 matched non-pilot accounts for directional comparison |
| Duration | 8 weeks total: 2 setup, 4 live usage, 2 conversion and analysis |
| Minimum data floor | 10,000 eligible support interactions, or results remain directional |

### Expected Outcomes

Smart Assist is expected to create leading indicators before it creates confirmed retention impact. The most credible near-term outcomes are:

- Faster first responses.
- Reduced repetitive writing.
- Higher agent satisfaction.
- Increased manager confidence in response consistency.
- Expansion ARR from paid add-on attach.
- Better competitive positioning in AI-related sales conversations.

The least credible near-term claim is direct churn reduction. That should be measured over renewal cycles, not inferred from beta excitement.

### Whitepaper Conclusion

Smart Assist is a worthwhile product bet if HelpFlow treats it as a disciplined validation program. The right story is not "AI will fix churn." The right story is "HelpFlow can turn agent productivity into a paid expansion module while learning whether AI assistance improves retention over time."

## 7. Prioritization

**Decision:** Which v1 capabilities should ship first?

**Framework used:** RICE-style scoring, with reach, impact, confidence, and effort estimated from the scenario.

| Rank | Option | Reach | Impact | Confidence | Effort | Score | Evidence | Notes |
|---|---:|---:|---:|---:|---:|---:|---|---|
| 1 | Auto-draft reply | 9 | 9 | 7 | 6 | 94.5 | Top stated customer and competitor use case | Core value driver |
| 2 | Ticket summarization | 6 | 7 | 7 | 4 | 73.5 | Strong handoff/escalation use case | Useful and lower risk than sending replies |
| 3 | Admin controls and human-review guardrails | 8 | 8 | 8 | 5 | 102.4 | Required for trust and launch readiness | This is enabling scope, not optional polish |
| 4 | Analytics and edit-distance tracking | 7 | 7 | 6 | 4 | 73.5 | Needed for beta decisions and buyer proof | Required to validate value |
| 5 | Tone modification | 6 | 5 | 6 | 3 | 60.0 | Useful but likely secondary | Keep narrow in v1 |
| 6 | Macro/template suggestion | 5 | 5 | 5 | 5 | 25.0 | In scope in concept, weaker for v1 | Defer unless beta shows strong demand |

**Recommendation:** Ship auto-draft, summarization, guardrails/admin controls, analytics, and simple tone modification. Defer pattern-based macro suggestion unless beta evidence shows it is more valuable than expected.

**Lowest-confidence input:** The reach and impact of tone modification. It may delight users, but it is unlikely to carry the paid add-on value story by itself.

## 8. Pilot Experiment Plan

### Experiment 1: Paid Commitment Test

- **Assumption tested:** Smart Assist creates enough perceived value for SMB customers to pay for it.
- **Hypothesis:** At least 30% of activated pilot accounts will sign a paid add-on order, expansion quote, or binding renewal inclusion within 14 days of pilot end.
- **Method:** Paid pilot or opt-in beta with conversion ask.
- **Metric:** Paid conversion rate among activated pilot accounts.
- **Success threshold:** >=30% paid commitment with limited discounting and at least three customer segments represented.
- **Kill threshold:** <15% paid commitment, or demand only appears when bundled free.
- **Watch zone:** 15%-29%; continue only if a clear high-intent segment emerges.

### Experiment 2: Workflow Value Test

- **Assumption tested:** AI assistance measurably improves support team productivity.
- **Hypothesis:** At least 60% of active pilot agents will use Smart Assist on >=30% of eligible tickets, and AI-assisted tickets will show >=15% lower first-response time versus matched baseline.
- **Method:** Production pilot with analytics and matched control.
- **Primary metric:** Eligible-ticket AI usage rate.
- **Secondary metrics:** First response time, handle time, draft acceptance rate, agent satisfaction.
- **Success threshold:** >=60% active agent adoption, >=30% eligible-ticket usage, >=15% first-response-time improvement.
- **Kill threshold:** <30% active agent adoption or <10% workflow improvement after onboarding and product fixes.

### Experiment 3: Trust and Quality Gate

- **Assumption tested:** Smart Assist can improve speed without creating unacceptable quality, privacy, or brand risk.
- **Hypothesis:** At least 95% of AI outputs will pass human review without material correction, with zero P0/P1 safety, privacy, or customer-data incidents.
- **Method:** Guardrailed pilot with human review, audit sampling, and incident logging.
- **Primary metric:** Material correction or unsafe-output rate.
- **Success threshold:** >=95% acceptable outputs, zero severe incidents, CSAT non-inferior to control within 1 percentage point.
- **Kill threshold:** Any repeated privacy/data leakage issue, any severe customer-visible hallucination, >3% material inaccuracy rate, or CSAT decline >2 percentage points.

**Run first:** Paid commitment and workflow value should run together. Usage without willingness to pay is not enough; payment without safe operational value is not shippable.

## 9. Expected Outcomes and Reasoning

### Baseline

| Metric | Current | Target / Question |
|---|---:|---|
| ARR | $12M | Protect and expand |
| Annual churn | 12% | Reduce over renewal cycles |
| NRR | ~102% | Leadership target: 110% within 12 months |
| Required NRR lift | 8 points | About $960K net retained ARR on $12M base |
| Smart Assist attach goal | 30% of Pro and Enterprise accounts within 9 months | Validate feasibility in beta |

### Year-1 Incremental ARR Model

These are forecast ranges, not measured impact.

| Scenario | Eligible ARR Assumption | Paid Attach | Add-on Uplift | Incremental ARR | Interpretation |
|---|---:|---:|---:|---:|---|
| Downside | $7.2M-$9.0M | 3%-7% | 5%-10% | ~$10K-$65K | Feature interest, weak paid product signal |
| Base | $7.2M-$9.0M | 8%-15% | 10%-15% | ~$60K-$200K | Viable add-on if margin and quality hold |
| Upside | $7.2M-$9.0M | 18%-30% | 15%-25% | ~$195K-$675K | Strong expansion product and roadmap-worthy module |

**Formula:** Eligible ARR x paid attach x add-on uplift = incremental ARR.

### Why This Does Not Yet Hit the NRR Goal

The leadership target of 110% NRR requires roughly $960K in additional net retained ARR if measured against the $12M base. Even the upside Smart Assist forecast may not fully close that gap by itself. This is not a reason to avoid the product. It is a reason to describe it accurately:

- Smart Assist can help expansion revenue.
- Smart Assist can reduce competitive loss.
- Smart Assist may improve retention if it becomes embedded in daily workflows.
- Smart Assist should not be presented as the only churn plan until renewal cohort evidence exists.

### Product Outcome Expectations

| Outcome | Expected Range | Confidence | Reasoning |
|---|---:|---|---|
| First-response time reduction | 10%-25% in successful pilot teams | Medium | Drafting and summarization target direct time sinks |
| Average handle time reduction | 5%-15% | Low-Med | Depends on ticket complexity and whether agents heavily edit drafts |
| Weekly active agent adoption | 40%-70% in activated pilot accounts | Medium | Strong workflow fit, but novelty decay is likely |
| Draft acceptance / low-edit rate | 40%-65% of generated drafts | Low-Med | Highly dependent on KB quality and prompt grounding |
| Agent satisfaction lift | 5%-12% | Medium | Reducing repetitive writing should help, but bad drafts can frustrate |
| CSAT impact | Neutral to +2 points | Low | Customer-perceived quality must be proven, not assumed |
| Paid conversion after pilot | 15%-35% | Low-Med | Strongly depends on packaging and ROI proof |

### Unit Economics Unknown

The model cannot be finalized without:

- Cost per draft generation.
- Cost per summarization.
- Average AI actions per active agent per month.
- Caching and model-routing strategy.
- Support load created by AI quality issues.
- Discounting and packaging rules.

The recommended beta should include a margin dashboard. A product that improves response time but creates negative gross margin at high usage is not ready for broad paid launch.

## 10. Risk Analysis

**Project:** Smart Assist  
**Phase:** Discovery to beta planning  
**Overall verdict:** Medium-high risk, acceptable for a gated beta.

| # | Risk | Category | Likelihood | Impact | Priority | Detectability | Velocity | Response | Owner |
|---|---|---|---|---|---|---|---|---|---|
| R1 | Customers like the feature but will not pay separately | Business | M | H | High | Easy | Medium | Mitigate | PM / Sales |
| R2 | AI output damages trust through hallucinations, bad tone, or policy violations | Product / Trust | M | H | High | Moderate | Fast | Mitigate | PM / Eng / Support |
| R3 | Third-party LLM costs make pricing unattractive | Business / Technical | M | H | High | Moderate | Medium | Mitigate | Eng / Finance |
| R4 | Adoption is shallow after novelty wears off | Product | M | M | Medium | Easy | Slow | Mitigate | PM / Design |
| R5 | Data privacy or compliance concerns block rollout | Security | L-M | H | Medium | Hard | Medium | Escalate / Mitigate | Legal / Security |
| R6 | AI add-on distracts from core churn drivers | Strategy | M | M | Medium | Moderate | Slow | Mitigate | Product Leadership |

### Top Risk Detail

**R1: Customers like the feature but will not pay separately**

- **What could happen:** Users engage in beta, but buyers only want it if bundled free.
- **Trigger signal:** Healthy usage but <15% of activated pilot accounts sign paid commitment.
- **Action:** Include a paid conversion ask in beta, test two pricing bands, and segment results by ticket volume and account size.

**R2: AI output damages trust**

- **What could happen:** Hallucinated, off-brand, or policy-violating drafts reach customers.
- **Trigger signal:** >3% material correction rate, CSAT down >2 points, or any severe customer-visible failure.
- **Action:** Keep human review mandatory, audit outputs, block unsupported categories, and provide kill switch.

**R3: Unit economics fail**

- **What could happen:** Heavy users create negative margin under per-seat pricing.
- **Trigger signal:** Cost per assisted ticket exceeds target margin or usage clusters in unprofitable accounts.
- **Action:** Add usage guardrails, model routing, caching, package limits, and finance review before GA.

**R5: Privacy review blocks rollout**

- **What could happen:** Customers or Legal object to LLM data handling.
- **Trigger signal:** Security reviews stall, DPA cannot be completed, or customers request terms HelpFlow cannot meet.
- **Action:** Complete vendor review before beta expansion, document data flow, offer retention controls, and clarify no-training commitments where possible.

## 11. Resulting PRD

### PRD: Smart Assist V1

**Version:** 1.0  
**Date:** 2026-06-11  
**Author:** HelpFlow PM  
**Status:** Draft / beta planning  
**Approvers:** VP Product, Engineering Lead, Design Lead, Legal/Security, Revenue Lead, Finance  
**Source of truth:** `artifacts/helpflow-smart-assist-case-study.md`  
**Linked artifacts:** Scenario prompt, beta plan, risk register, stakeholder communications

#### 11.1 Purpose and Background

Smart Assist is a paid AI module for HelpFlow that helps support agents respond faster and more consistently while keeping humans in control. The initiative responds to customer productivity pain, competitive pressure from AI-enabled support tools, and leadership goals around expansion revenue and retention. V1 will validate whether AI-assisted drafting, tone modification, and summarization create enough trusted value to justify paid packaging.

#### 11.2 Problem and Users

| Role / Persona | Who They Are | Primary Need |
|---|---|---|
| Support Agent "Alex" | Handles 60-80 tickets per day | Draft accurate, friendly replies faster without losing control |
| Support Manager "Jordan" | Manages 15 agents | Improve response time and consistency while preventing bad AI outputs |
| Buyer "Taylor" | Head of Support or COO | Prove productivity gain and cost savings before paying for AI |
| CSM / Sales Rep | Helps accounts adopt and expand | Show credible ROI and competitive parity without overclaiming |

#### 11.3 Goals and Success Metrics

| Goal | Success Metric | Target |
|---|---|---|
| Increase expansion revenue | Paid pilot conversion | >=30% activated pilot accounts commit to paid add-on or renewal inclusion |
| Improve agent productivity | First-response time | >=15% reduction in pilot vs. baseline/matched control |
| Drive real adoption | Weekly active agent usage | >=60% of active pilot agents use Smart Assist weekly |
| Build trust | Human review pass rate | >=95% generated outputs require no material correction |
| Protect customer experience | CSAT | Non-inferior to control within 1 point |
| Validate business model | Add-on gross margin | Meets finance-approved threshold under real beta usage |

#### 11.4 Evidence and Decisions

| Evidence / Decision | Source | Confidence | Implication |
|---|---|---|---|
| Competitors offer AI assistance and prospects mention the gap | Sales calls in scenario | Medium | Smart Assist is strategically urgent |
| Agents spend time writing repetitive responses | Scenario / persona | Medium | Auto-draft is the highest-priority workflow |
| Managers worry about AI going off script | Scenario / persona | High | Human review and admin controls are must-have |
| NRR target requires substantial net ARR lift | Financial reasoning | High | Smart Assist cannot be the whole retention plan |
| Paid willingness to pay is unknown | Missing data | High | Beta must include conversion ask |
| LLM margin is unknown | Missing data | High | Beta must collect unit-cost telemetry |

#### 11.5 Assumptions and Constraints

**Assumptions to validate:**

- Existing Pro and lower-Enterprise customers have enough repetitive ticket volume to value AI assistance.
- Knowledge base content is sufficiently complete to ground useful drafts.
- Agents will review and edit drafts rather than blindly sending them.
- Managers will accept human-reviewed AI as safe enough for team use.
- A per-seat add-on with usage guardrails will feel fair to buyers.

**Constraints:**

- V1 must use a third-party LLM provider.
- Draft generation target latency is <3 seconds.
- Human review is required before sending customer replies.
- Full auto-response is out of scope.
- Logging must avoid storing full customer content by default.
- Admins must be able to disable Smart Assist by team.

#### 11.6 Functional Requirements

**Draft Generation**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-01 | Agents can click "Generate reply" from the ticket editor | Must | Primary workflow entry point |
| FR-02 | System generates a draft using current message, last five messages, and relevant KB snippets | Must | Context must be bounded |
| FR-03 | Agents can edit generated drafts before sending | Must | Human-in-the-loop requirement |
| FR-04 | System displays "AI-generated, please review before sending" near generated text | Must | Trust and safety |
| FR-05 | Agents can discard a generated draft | Must | Avoid forced workflow |
| FR-06 | System records whether a generated draft was accepted, edited, or discarded | Must | Needed for analytics |

**Tone Modification**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-07 | Agents can modify selected draft text to be more formal | Should | V1 tone option |
| FR-08 | Agents can modify selected draft text to be more concise | Should | V1 tone option |
| FR-09 | Agents can modify selected draft text to be more friendly | Should | V1 tone option |
| FR-10 | Tone modification preserves factual content from the draft | Must | Guardrail |

**Ticket Summarization**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-11 | Agents can click "Summarize conversation" from a ticket | Must | Handoff workflow |
| FR-12 | Summary includes issue, customer state, attempted steps, and recommended next action | Must | Consistent handoff format |
| FR-13 | Summary can be copied into internal notes | Should | Faster escalation |

**Admin Controls**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-14 | Admins can enable/disable Smart Assist at account level | Must | Safety and rollout control |
| FR-15 | Admins can enable/disable Smart Assist by team | Must | Required by scenario |
| FR-16 | Admins can view usage by team and agent | Should | Manager value and adoption |
| FR-17 | Admins can access data-processing and retention settings where available | Must | Depends on provider capabilities |

**Analytics**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-18 | Track percentage of tickets where Smart Assist was used | Must | Adoption metric |
| FR-19 | Track generated draft acceptance/edit/discard events | Must | Trust and quality proxy |
| FR-20 | Estimate edit distance between draft and sent reply | Should | Rough trust measure |
| FR-21 | Compare before/after response-time metrics for pilot teams | Must | Pilot success metric |
| FR-22 | Track LLM request volume and cost by account/workflow | Must | Margin validation |

**Safety and Operations**

| ID | Requirement | Priority | Notes |
|---|---|---|---|
| FR-23 | System prevents AI drafts from being sent automatically in v1 | Must | Explicit out-of-scope protection |
| FR-24 | System supports tenant-level kill switch | Must | Incident response |
| FR-25 | System logs prompt/response IDs without full content by default | Must | Observability without over-retention |
| FR-26 | System shows fallback messaging if generation fails or times out | Must | User experience |

#### 11.7 Non-Functional Requirements

| ID | Category | Requirement | Target |
|---|---|---|---|
| NFR-01 | Performance | Draft generation latency | p95 <3 seconds for eligible pilot traffic |
| NFR-02 | Reliability | Graceful degradation | Failed generation does not block ticket reply |
| NFR-03 | Security | Data minimization | Only required ticket text, bounded history, and KB snippets sent |
| NFR-04 | Privacy | Retention controls | Configurable based on provider capability and customer terms |
| NFR-05 | Observability | Request tracing | Log prompt/response IDs, model, latency, and error codes |
| NFR-06 | Quality | Human review | No AI-generated customer reply sent without user action |
| NFR-07 | Accessibility | Editor controls | Follow existing HelpFlow editor accessibility standards |

#### 11.8 Out of Scope

- Fully automated replies.
- Multilingual draft generation.
- Deep brand/persona customization.
- AI-generated responses for regulated advice categories unless explicitly approved.
- Training customer-specific models.
- Replacing macro/template management.
- Public launch claims about churn reduction.

#### 11.9 Dependencies

| Dependency | Type | Owner | Status |
|---|---|---|---|
| Third-party LLM provider agreement | Vendor / Legal | Legal / Eng | Pending |
| Data processing addendum | Legal | Legal | Pending |
| KB retrieval pipeline | Technical | Eng | Pending |
| Editor integration | Product / Eng | Eng | Pending |
| Analytics event schema | Data / Product | PM / Data | Pending |
| Pricing test bands | Business | PM / Finance / Revenue | Pending |
| Beta customer list | GTM | CSM / Sales | Pending |

#### 11.10 Delivery Readiness

| Readiness Item | Status | Owner | Notes |
|---|---|---|---|
| Stories ready to write | Partial | PM | Requirements defined; stories still needed |
| Designs available | No | Design | Editor, admin settings, analytics surfaces needed |
| Analytics instrumentation defined | Partial | PM / Data | Events identified; schema needed |
| Legal/security review | No | Legal / Security | Must complete before expanded beta |
| Release/rollout gate defined | Yes | PM | Gates documented above |
| Pricing finalized | No | PM / Finance | Use beta to validate |

#### 11.11 Open Questions

| # | Question | Who Can Answer | By When |
|---|---|---|---|
| Q1 | What share of ARR is Pro/Enterprise and eligible for AI attach? | Finance / RevOps | Before beta sizing |
| Q2 | Which churn reasons are actually addressable by AI assistance? | CS / Data | Before GA claim |
| Q3 | What is cost per AI action under real customer usage? | Eng / Finance | During beta |
| Q4 | What data retention terms can the LLM provider support? | Legal / Security | Before beta expansion |
| Q5 | What price bands will Sales test? | PM / Finance / Revenue | Before recruitment |
| Q6 | How complete and reliable are customer KBs? | Product / Data | Before pilot cohort finalization |

#### 11.12 Sign-Off

| Role | Status | Date |
|---|---|---|
| VP Product | Pending | TBD |
| Engineering Lead | Pending | TBD |
| Design Lead | Pending | TBD |
| Legal / Security | Pending | TBD |
| Revenue Lead | Pending | TBD |
| Finance | Pending | TBD |

## 12. Outcome Roadmap

**Roadmap goal:** Validate Smart Assist as a trusted, paid expansion module that improves support productivity without increasing customer risk.

### Now: Beta Readiness

| Initiative | Outcome / Theme | Why Now | Confidence |
|---|---|---|---|
| Draft generation in editor | Core productivity proof | Primary value hypothesis | Medium |
| Human review and admin controls | Trust and safety | Required for beta | High |
| Summarization | Handoff efficiency | Lower-risk AI value path | Medium |
| Analytics and cost telemetry | Decision quality | Required for gates | High |
| Legal/vendor review | Launch permission | Prevents late blocker | Medium |

### Next: Controlled Beta

| Initiative | Outcome / Theme | Depends On | Confidence |
|---|---|---|---|
| 25 activated pilot accounts | Adoption and value proof | Beta readiness | Medium |
| Paid conversion ask | Willingness-to-pay proof | Pricing bands | Low-Med |
| Customer case studies | GTM proof | Strong beta outcomes | Low-Med |
| Sales/CS playbook | Repeatable expansion | Early beta learning | Medium |

### Later: Expansion

| Initiative | Outcome / Theme | Open Question | Confidence |
|---|---|---|---|
| Enterprise AI package | Larger expansion deals | Security/admin needs | Medium |
| Macro/template suggestions | Deeper workflow automation | Is it higher value than v1? | Low |
| Multilingual support | Segment expansion | Is demand large enough? | Low |
| Automated replies | Step-change productivity | Can trust and quality support it? | Low |

## 13. Stakeholder Communication Plan

| Stakeholder | Role | Power | Interest | Strategy | Frequency | Channel | Key Message |
|---|---|---|---|---|---|---|---|
| Exec sponsor | VP Product / CEO | High | High | Manage closely | Weekly during beta | Smart Assist is an expansion wedge with gated risk |
| Revenue lead | Sales / CS leadership | High | High | Manage closely | Weekly | We need paid proof, not just demo excitement |
| Engineering lead | Delivery owner | High | High | Manage closely | Twice weekly | Quality, latency, and cost telemetry are launch gates |
| Design lead | Workflow owner | Medium | High | Manage closely | Twice weekly | Agent trust and editor ergonomics decide adoption |
| Legal / Security | Risk owner | High | Medium | Keep satisfied | Milestone reviews | Data handling must be approved before scale |
| Finance | Margin and pricing | High | Medium | Keep satisfied | Pricing checkpoints | Usage and cost must fit packaging |
| Beta customers | Design partners | Medium | High | Keep informed | Kickoff, midpoint, closeout | Human-reviewed AI should reduce repetitive work |
| Support agents | End users | Low | High | Keep informed | In-app and training | AI drafts are assistive and editable |

**Conflicts to manage:** Sales may want broad launch and aggressive discounts; Finance needs margin discipline; Legal may slow expansion; Product needs enough beta learning before public claims.

**Neglect risks:** Legal/Security and Support Managers. If either group feels surprised, trust in the launch can collapse quickly.

## 14. Invented Supplemental Stakeholder Communications

These are invented communications for the case exercise. They are intentionally plausible, not assumed source facts.

### 14.1 Exec One-Pager Excerpt

**Subject:** Smart Assist Beta Recommendation: Expansion Wedge, Not Churn Cure

**Status:** On track for controlled beta planning.

Smart Assist is a paid AI add-on intended to help agents draft replies, adjust tone, and summarize customer conversations. The strategic reason to proceed is strong: AI is becoming a buyer expectation in support tooling, and Sales is already encountering competitive objections.

The key recommendation is to treat v1 as a validation program. We should not position Smart Assist as the full plan to move NRR from 102% to 110%. On a $12M ARR base, that target implies roughly $960K in additional net retained ARR. Smart Assist can contribute to that goal, especially through expansion, but churn reduction should be proven over renewal cycles.

**Decision requested:** Approve a controlled beta with 25 activated accounts, explicit paid-conversion asks, and GA gates for adoption, productivity, trust, privacy, and margin.

**Beta success requires:**

- >=60% weekly active agent usage.
- >=15% first-response-time improvement.
- >=95% output review pass rate.
- Zero P0/P1 data or customer-visible quality incidents.
- >=30% activated account paid commitment.
- Finance-approved gross margin under real usage.

### 14.2 Beta Customer Invite

**Subject:** Early access invitation: HelpFlow Smart Assist

Hi [Name],

We are inviting a small group of HelpFlow customers to try Smart Assist, a new AI add-on for support teams.

Smart Assist helps agents draft replies, adjust tone, and summarize long conversations. Your team stays in control: AI-generated content is reviewed and edited by agents before anything is sent.

For the beta, we are looking for feedback on:

- Whether suggested replies save time in real workflows.
- Where drafts are accurate or miss context.
- How summaries help with handoffs and escalations.
- What controls managers need before enabling AI broadly.
- What reporting would help you measure team impact.

The beta will run for four live usage weeks after setup. We will share usage and productivity insights with you at the midpoint and closeout.

Would you be open to joining the early-access group with a small set of agents from your team?

### 14.3 Sales / CS Enablement Note

**Positioning:** Smart Assist helps support teams handle repetitive replies faster while keeping agents in control.

**Say:**

- "Smart Assist drafts responses and summaries for human review."
- "The goal is faster, more consistent support, not replacing agents."
- "We are measuring response-time improvement, adoption, and quality before broad rollout."

**Do not say yet:**

- "Smart Assist reduces churn."
- "Smart Assist replaces macros."
- "Smart Assist can auto-respond to customers."
- "Smart Assist works in every language."

**Discovery questions for customers:**

- How much time do agents spend writing repetitive replies?
- Which ticket categories are most template-driven?
- What would make you trust or reject an AI-generated draft?
- How do you measure response quality today?
- Would you pay for faster replies if the improvement were visible in reporting?

## 15. Case Study

### Case Study: Smart Assist V1

**Status:** Draft / pre-beta  
**Date:** 2026-06-11  
**Related skills/artifacts:** triage, assumptions, experiments, risks, pricing, gtm, stakeholder, prd, roadmap

#### 15.1 Summary

HelpFlow identified Smart Assist as a potential paid AI module to improve support agent productivity and respond to competitive pressure. The PM recommendation is to proceed with a narrow, human-reviewed v1 and a gated beta, while avoiding premature claims that the product will independently raise NRR from 102% to 110%.

#### 15.2 Problem

Agents spend time drafting repetitive responses and catching up on long ticket histories. Managers need consistent, policy-safe replies. Buyers want productivity gains and see competitors offering AI assistance. HelpFlow also needs expansion revenue, but it has not yet proven that AI is a direct churn-reduction lever.

#### 15.3 Approach

The approach was to scope v1 around workflows that are frequent, valuable, and bounded:

- Draft a reply.
- Adjust tone.
- Summarize a conversation.
- Keep human review and admin control.
- Instrument adoption, quality, response time, and unit cost.

The biggest tradeoff was speed to market versus trust. The recommendation favors a focused assistive workflow over broad automation because the trust cost of a bad AI response is too high for v1.

#### 15.4 What Ships in V1

- Generate reply button in ticket editor.
- Draft generation from bounded ticket context and KB snippets.
- Tone modifiers for formal, concise, and friendly language.
- Conversation summary for handoffs.
- Human-review banner.
- Admin enable/disable controls by account and team.
- Usage, edit-distance, response-time, and cost analytics.
- Tenant-level kill switch and fallback handling.

#### 15.5 Evidence and Outcome

Because this is pre-beta, outcomes are expected, not measured.

| Signal | Expected / Target Result | Confidence |
|---|---|---|
| Weekly active agent usage | >=60% of active pilot agents | Medium |
| Eligible-ticket usage | >=30% | Medium |
| First-response time | >=15% improvement | Medium |
| Output review pass rate | >=95% | Low-Med |
| Paid pilot conversion | >=30% of activated accounts | Low-Med |
| Severe AI incidents | 0 | Medium |
| Year-1 incremental ARR | Base case ~$60K-$200K | Low-Med |
| NRR movement | Directionally positive, not proven | Low |

#### 15.6 Surprises and Lessons

- The NRR target reframes the product. Smart Assist is valuable, but the math shows it is unlikely to close the full NRR gap alone.
- Trust controls are not "enterprise polish"; they are core v1 functionality.
- Pricing cannot be finalized from strategy alone because LLM unit economics and usage intensity are unknown.
- Usage metrics without paid conversion can create false confidence.
- A beta can prove leading indicators, not renewal impact.

#### 15.7 Follow-Ups

| Item | Owner | Priority |
|---|---|---|
| Pull churn reason analysis by segment | Data / CS | High |
| Build beta account selection list | CSM / Sales / PM | High |
| Define analytics event schema | PM / Data | High |
| Complete LLM vendor security review | Legal / Security / Eng | High |
| Create wireframes for editor and admin settings | Design | High |
| Draft implementation stories | PM / Eng | Medium |
| Build sales battlecard | PMM / Sales | Medium |
| Prepare customer case-study criteria | PM / CS | Medium |

## 16. Final Recommendation

Proceed with Smart Assist V1 as a controlled beta. Do not delay until the perfect AI platform exists, but do not overpromise churn reduction or launch broad automation. The strongest PM posture is to make Smart Assist a measured expansion bet with clear gates:

- Ship a narrow assistive workflow.
- Prove usage, quality, willingness to pay, and margin.
- Package predictably for SMB buyers.
- Use beta evidence to decide whether to scale, reposition, or stop.

The product has enough strategic pull to justify the beta. It does not yet have enough evidence to justify a public launch, a final price, or a claim that it will independently move NRR to 110%.
