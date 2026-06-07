---
name: experiments
description: Designs cheap, fast experiments to validate assumptions before you build. Produces testable hypotheses and low-effort validation methods like landing pages, concierge tests, pre-orders, and prototypes. Use when validating demand, testing a feature idea, or de-risking a bet.
argument-hint: <assumption or idea to validate>
user-invocable: true
metadata: {"openclaw":{"model":"openai/gpt-5.5"}}
---

## What this does

Turns a risky assumption into a concrete, low-cost test. It writes a measurable hypothesis and proposes the cheapest experiment that produces a real signal — favoring evidence of actual behavior (and willingness to pay) over opinions.

## Input

$ARGUMENTS

*If no input is provided above, ask: "What assumption or idea do you want to validate? Is this for a new product or an existing one?"*

---

## How to design each experiment

1. **Write a testable hypothesis.** Use the form: *"At least X% of Y will do Z."*
   - X% = the share of the target group you expect to engage
   - Y = the specific target group
   - Z = the observable action that proves the point

2. **Pick the cheapest method that gives a real signal:**

   | Method | Tests | Signal |
   |---|---|---|
   | Landing page | Interest | Sign-ups, clicks |
   | Explainer video | Understanding + appeal | Engagement, sign-ups |
   | Email / outreach | Demand | Reply and click-through rates |
   | Pre-order / waitlist | Willingness to pay | Real commitment (money, deposit) |
   | Concierge / manual MVP | Value | Delivering the service by hand before automating |
   | Prototype / usability test | Usability | Task completion, confusion points |
   | Spike / technical proof | Feasibility | Can we actually build it? |

3. **Demand commitment, not opinions.** The only reliable signal is when people give up something real — time, money, or reputation. "Would you use this?" is worthless; "Here's my email / deposit" is data.

4. **Collect your own data.** Market reports and analogies describe someone else's idea, not yours. Run the test.

---

## Output Format

### Experiment Plan — [Assumption being tested]

For each experiment:

**Experiment [N]: [Name]**
- *Assumption tested:* [What belief this validates or kills]
- *Hypothesis:* At least [X]% of [Y] will [Z]
- *Method:* [From the table above]
- *Metric:* [The single number that matters]
- *Success threshold:* [The result that means "proceed"]
- *Kill threshold:* [The result that means "stop"]
- *Effort / cost:* [Rough time and money]
- *Timeline:* [How long to run]

**Run first:** [Which experiment gives the most learning per dollar, and why.]
