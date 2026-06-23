# Write Sharp — Combined Skill (v1.0.0)

> Single-file build of the write-sharp skill. License: CC BY 4.0 — Sailesh Mishra.
> Source of truth: write-sharp/SKILL.md plus write-sharp/references/*.
> To use in any agent framework, load this entire file as system/instruction context.

---

---
name: write-sharp
description: Applies the content standard for external-facing marketing and thought leadership content. Combines narrative framework (story structure, emotional chemistry, positioning) with AI-pattern removal (passive voice, binary contrasts, throat-clearing, false agency). Use when writing or reviewing blogs, articles, whitepapers, case studies, social posts, campaign briefs, or sales narratives.
metadata:
  trigger: Writing or editing a blog, article, whitepaper, case study, social post, email, campaign brief, sales narrative, or any marketing content
  author: Sailesh Mishra
  version: 1.0.0
  license: CC-BY-4.0
---

# Write Sharp

Content fails two ways: strategically (clear but not felt — no tension, no position that costs anything to hold) and mechanically (full of AI tells — em-dashes, binary contrasts, throat-clearing, inanimate subjects doing human things). This skill addresses both in three phases.

## Scope

**Use for:** Blog posts, articles, whitepapers, position papers, case studies, LinkedIn and social posts, marketing emails, campaign briefs, sales narratives, thought leadership, product launch content, website copy.

**Do not use for:** Technical documentation (API docs, code comments, engineering specs, READMEs), internal communications (Slack, meeting notes, internal memos), academic or research papers, legal and compliance documents, customer support content (help articles, FAQs), UX microcopy (button labels, tooltips, error messages), data analysis reports, or purely factual press release announcements.

---

## Brand Layer (Optional)

Before running the brief, ask:
> "Do you want to apply a brand or style guide?
> - **[Y]** — I'll ask how you want to supply it
> - **[N]** — Skip. write-sharp defaults apply."

If Y, prompt:
> "Supply your brand/style guide in any of these ways:
> 1. **File path** — share the path (e.g., `/Users/you/Downloads/BrandGuide.md`) and I'll read it directly
> 2. **Paste text** — copy and paste key sections (voice, tone, word usage, AI guidance) directly here
> 3. **Attachment** — if you're in the Claude.ai web/desktop app, attach the file via the paperclip icon
>
> Partial is fine — even just the voice and tone section is useful."

Once content arrives, extract brand rules and store as a **Brand Context block**. Apply as an override layer throughout Phases 1–3. Where brand rules conflict with write-sharp defaults, brand rules win — write-sharp is the floor, brand is the ceiling. See extraction guide → [references/brand-layer.md](references/brand-layer.md)

---

## Format Register

Confirm the format before Phase 1. This determines rhythm, sentence length, and acceptable fragment use throughout — treat it as a hard constraint, not a preference.

| Format | Rhythm | Sentence length | Acceptable fragment use |
|--------|--------|-----------------|------------------------|
| LinkedIn / social | Punchy, 1–3 sentence paragraphs | Short–medium | Occasional — for emphasis only |
| Blog post | Connected prose, 3–5 sentence paragraphs | Mixed | Rare — one per section maximum |
| Whitepaper / position paper | Authoritative, formal-but-warm | Medium–long | None |
| Case study | Narrative arc, scene-based | Mixed | None |
| Email | Scannable, warm | Short–medium | Rare |

**Critical rule:** A blog post written in LinkedIn rhythm reads like a slide deck. Executive-audience long-form requires connected prose — not staccato fragments, not every paragraph ending in a punchy one-liner, not dramatic line breaks in place of transitions. Enforce this at the sentence level throughout Phases 2 and 3.

Add "What format is this?" as the first question in Phase 1.

---

## Phase 1: Before Writing

Run all 7 questions in [references/pre-write-brief.md](references/pre-write-brief.md). If any are unanswerable, the brief is wrong — not the draft. Stop and fix the brief.

---

## Phase 2: While Writing

- Narrative principles (Chemistry, Tribe, Sparkline, Becoming, Moat) → [references/principles.md](references/principles.md)
- Opening mechanics (3 that work / 3 that always fail) → [references/opening-mechanics.md](references/opening-mechanics.md)
- Craft rules + quick-check list → [references/craft-rules.md](references/craft-rules.md)
- Voice patterns → [references/voice-register.md](references/voice-register.md)

---

## Phase 3: After Writing

Run in this order:

1. **Strategic critique** — 8 tests, pass/fail → [references/post-write-critique.md](references/post-write-critique.md)
   Scoring: 0–2 fails = ship; 3–4 = rewrite; 5+ = the brief is wrong, not the draft.

2. **Mechanical scan** — strategic red flags + word/phrase patterns → [references/red-flags.md](references/red-flags.md)
   Sentence and paragraph structure patterns → [references/structures.md](references/structures.md)

3. **Before/after examples** for reference → [references/examples.md](references/examples.md)


---

# Reference: brand-layer.md

# Brand Layer

Processing guide for applying an uploaded brand or style guide as an overlay on write-sharp defaults. Used when the user supplies a brand document in the Brand Layer gate.

---

## What to Extract

Read the supplied document and extract the following eight categories. If a category is not covered, write-sharp defaults apply for that category.

| Category | What to look for | Example |
|----------|-----------------|---------|
| **Voice descriptors** | Adjectives describing the brand personality | "warm, authoritative, witty, approachable" |
| **Tone restrictions** | What the brand explicitly avoids | "no FUD, no hard-sell, no scare tactics, no overly technical language" |
| **Vocabulary — use** | Specific words or phrases the brand prefers | "organizations" over "enterprises"; "we" for the brand |
| **Vocabulary — avoid/swap** | Words banned or flagged as off-brand | "solution" → name the specific product; "game-changer" → banned |
| **AI-voice patterns** | Any AI-specific avoidance lists the brand maintains | Overused word tables, AI-ism lists |
| **POV rules** | First-person / second-person / third-person assignments | First-person plural = brand; second-person = customer; third-person = competitors only |
| **Grammar preferences** | Contractions, style guide (AP vs. Chicago), formality level | "Contractions OK in copy; spell out in formal collateral" |
| **Format-specific rules** | Any guidance that varies by content type | "Blogs: conversational; Whitepapers: formal but warm" |

---

## How to Apply

1. **Surface the Brand Context block to the user** before writing begins. List the active rules in a brief summary so they can confirm or correct:

   > "Brand context active. Key rules:
   > - Voice: [descriptors]
   > - Vocabulary out: [words]
   > - Vocabulary in: [swaps]
   > - Tone: [restrictions]
   > - POV: [assignments]
   > Proceed, or any corrections?"

2. **Apply as an override layer** throughout Phases 1–3. Brand rules replace write-sharp defaults where they conflict — they do not stack additionally. If the brand says "no em-dashes," that reinforces write-sharp. If the brand says "contractions are fine in copy," that overrides any write-sharp caution.

3. **Where brand rules are silent**, write-sharp defaults hold. The brand layer fills specific gaps; it does not replace the full write-sharp standard.

---

## Conflict Resolution

| Situation | Rule |
|-----------|------|
| Brand says X; write-sharp says Y | Brand wins |
| Brand is silent on X; write-sharp has guidance | write-sharp applies |
| Brand says "use passive voice for formal collateral" | Apply only to that format; active voice remains default for copy |
| Brand bans a word write-sharp doesn't flag | Add it to the active red-flag list for this session |
| Brand permits something write-sharp prohibits (e.g., em-dashes in certain contexts) | Brand permission applies — flag it in the Brand Context summary so it's explicit |

---

## Worked Example: Palo Alto Networks

Applied from the PAN Marketing Copy Style Guide (June 2026):

**Voice:** Warm, approachable, knowledgeable — fresh and familiar. Not stuffy, not hard-sell, not FUD-driven.

**Tone restrictions:** No fear, uncertainty, or doubt. No scare tactics. No boasting without evidence. No overly technical language. No lectures.

**POV:** First-person plural (we/our) = PAN. Second-person (you/your) = customer/prospect. Third-person = competitors and scenarios.

**Vocabulary — avoid:**
- Delve / Dive into → Explore, learn, understand
- Game-changer → Innovation, advancement
- Solution → Feature, platform, product (name it)
- Future-proof → Sustain, resilient, scalable
- Revolution → Change, shift, movement
- In the ever-evolving landscape of X → In X, Y happens
- It's important to note → Note that / cut it
- [Product] isn't only X, it's also Y → [Product] is both X and Y

**Grammar:** Contractions OK in copy (blogs, email, ads). Spell out in formal collateral (whitepapers, reports). AP style for web/comms; Chicago for long-form PDFs.

**AI avoidance:** PAN maintains its own AI-voice table. All seven categories (punctuation tells, robotic style, repetitive phrasing, lack of authentic voice, predictable structure, buzzwords, flat nuance) are active brand flags — cross-reference Section 3 of red-flags.md.

---

## Partial Guides

If the user supplies only part of a style guide (e.g., just the voice and tone section), extract what's available and flag what's missing:

> "Brand context active (partial). Voice and tone rules applied. No vocabulary list supplied — write-sharp word flags remain. No POV rules found — defaulting to second-person for reader, first-person plural for brand."

---

# Reference: craft-rules.md

# Craft Rules

Eight rules for sentence-level quality. Apply these while writing and again during the mechanical scan after writing.

---

## The Eight Rules

### 1. Cut Filler Phrases

Remove throat-clearing openers, emphasis crutches, and all adverbs. These announce the content without delivering it.

Full phrase list is in red-flags.md (linked from SKILL.md).

Common offenders: "Here's the thing:", "It turns out", "The uncomfortable truth is", "Full stop.", "Let that sink in.", "Fundamentally", "Simply", "Really", "Just".

### 2. Break Formulaic Structures

Avoid patterns that sound like insight but deliver only the structure of insight.

Full pattern list is in structures.md (linked from SKILL.md).

Primary offenders:
- Binary contrasts: "Not X. It's Y." → State Y directly.
- Dramatic fragmentation: "Threat detection catches known threats. Governance addresses what we don't." → One sentence.
- Rhetorical setups: "What if I told you..." → Make the point.
- False agency: "The data tells us..." → Name the person who drew the conclusion.

### 3. Use Active Voice

Every sentence needs a human subject doing something. No passive constructions. No inanimate objects performing human actions.

| Passive | Active |
|---------|--------|
| "Governance controls are applied at runtime" | "The security team applies governance controls at runtime" |
| "Runtime governance improves continuously through operational data" | "Security teams refine governance controls from each agent session" |
| "The decision was reached" | Name who decided |

### 4. Be Specific

No vague declaratives. Name the specific thing. No lazy extremes ("every," "always," "never") doing vague work.

| Vague | Specific |
|-------|----------|
| "The implications are significant" | Name the specific implication |
| "The enterprise AI landscape has fundamentally shifted" | Name the specific shift |
| "This matters" | Say what it changes for whom |

### 5. Put the Reader in the Room

No narrator-from-a-distance voice. "You" beats "People." "The security team couldn't see what the agent did" beats "Organizations face challenges with AI observability."

Put the reader inside a specific moment, not above it looking down.

### 6. Vary Rhythm

Mix sentence lengths. Two items beat three. End paragraphs differently — not every paragraph ends punchily. No em-dashes anywhere.

- Three consecutive sentences the same length? Break one.
- Three-item list? Cut to two or go to four. Three is the AI default.
- Em-dash anywhere? Remove it. Use a period or a comma.

### 7. Trust Readers

State facts directly. Skip softening, justification, hand-holding. No "I promise." No "And that's okay." No "Let me be clear." The reader can draw conclusions — let them.

### 8. Cut Quotables

If it sounds like a pull-quote, rewrite it. Pull-quotes are the sentence that sound profound but state nothing specific.

**Pull-quote tells:**
- Could be printed on a slide without context
- Sounds sharp but could be said about any security problem
- Contains an abstraction doing the work a specific should do

"No action escapes observation." → What specifically does the system observe, and what can the security team do because of it?

---

## Quick-Check List

Run before delivering any prose:

- [ ] Any adverbs? Kill them.
- [ ] Any passive voice? Find the actor, make them the subject.
- [ ] Inanimate thing doing a human verb ("governance evolves")? Name the person.
- [ ] Sentence starts with a Wh- word? Restructure it.
- [ ] Any "here's what/this/that" throat-clearing? Cut to the point.
- [ ] Any "not X, it's Y" contrasts? State Y directly.
- [ ] Three consecutive sentences match length? Break one.
- [ ] Paragraph ends with punchy one-liner? Vary it.
- [ ] Em-dash anywhere? Remove it.
- [ ] Vague declarative? Name the specific thing.
- [ ] Narrator-from-a-distance? Put the reader in the scene.
- [ ] Meta-joiner ("This framework addresses the gap by...")? Delete. Let the argument move.
- [ ] Same phrase or construction repeated in consecutive sections? One must change.
- [ ] Three or more consecutive paragraphs at identical structural rhythm? Break one.

---

# Reference: examples.md

# Before/After Examples

Two sections. Strategic level first — narrative and structural failures at the brief and lede level. Craft level second — mechanical failures at the sentence level. All examples use AI security marketing content as the domain.

---

## Section 1: Strategic Level

### Example S1: Narrator-Distant What Is → Reader-Inside What Is

**Before (narrator-distant):**
> "Most enterprises currently lack systematic means to observe, attribute, evaluate, and enforce governance over AI agent actions at runtime."

The reader receives a fact about "most enterprises." They do not feel it. They are above the problem, reading about others who have it.

**After (reader-inside):**
> "Your agent ran for four hours last Tuesday. You can tell the auditor it completed the task. You cannot tell them what it did between step two and step eight. You don't have that."

The reader inhabits the moment. The problem is not described — it is felt. Same information, different neurological effect.

**Violation fixed:** Narrator-from-a-distance What Is. Sparkline test failure.

---

### Example S2: Task Framing → Becoming Framing

**Before (task):**
> "Use this framework to identify governance gaps in your AI runtime security posture."

This tells the reader what to do with the content. It does not tell them what they become by doing it.

**After (becoming):**
> "Security teams that implement runtime governance become the team that can answer the question before it is asked — by the auditor, by the board, by the incident reviewer. That is a different position to be in."

The reader understands what changes for them. The framework is a vehicle; the becoming is the destination.

**Violation fixed:** Task framing instead of becoming. Becoming test failure.

---

### Example S3: Logo-Swap Failure → Grounded Opening

**Before (generic preamble — any vendor could publish this):**
> "As AI systems become embedded across enterprise operations, security teams face growing pressure to govern autonomous agent behavior. This creates demand for a new approach to runtime security — one that addresses the full lifecycle of AI agent activity."

Remove the logo. A standards body, an analyst firm, a competitor — any of them could publish this. Nothing in it requires the specific operational experience of the author.

**After (grounded — requires specific observation to write):**
> "We watched 1.65 million agent sessions run without a governance layer. We documented what broke: not the model, not the prompt, not the infrastructure. The gap was between what the agent was authorized to do and what it actually did. Nobody saw it. Nothing caught it."

This cannot be published by a competitor without the underlying observation. The specificity is the moat.

**Violation fixed:** Generic preamble. Moat test failure.

---

### Example S4: Vase → Flowers

**Before (vase — describes the framework):**
> "ARIA organizes AI runtime governance into five domains: behavioral monitoring, execution boundaries, action attribution, policy enforcement, and continuous learning. Each domain addresses a distinct dimension of runtime risk."

This describes the container. The reader understands what exists. They do not feel what changes when they have it.

**After (flowers — shows what it is like to use it):**
> "A vendor sits across the table. The evaluation is running. You get to D3.4 — Action Attribution — and ask them to show you a session audit trail for a multi-step agent workflow. They cannot. Not because they didn't prepare. Because they do not have it. You mark the cell. You move to the next vendor. That is what a governance framework is for."

The reader feels the use case before understanding the framework. The framework is the resolution to a scene they have already inhabited.

**Violation fixed:** Framework description without experience. Vase test failure.

---

## Section 2: Craft Level

### Example C1: Em-Dash as Connective Tissue

**Before:**
> "That action is a consequential enterprise event — not a passive data transaction."

**After:**
> "That action is a consequential enterprise event. It is not a passive data transaction. Treat it differently."

**Violation:** Em-dash doing the work a period and a new sentence should do. Also a binary contrast.

---

### Example C2: Binary Contrast (Not X, It's Y)

**Before:**
> "Threat detection catches what we already know to look for. Behavioral governance addresses what we don't."

**After:**
> "Behavioral governance covers unknown runtime patterns that signature-based threat detection cannot reach."

**Violation:** Dramatic two-beat template. The "we know / we don't" contrast is a structural tell. State the capability directly.

---

### Example C3: Dramatic Fragmentation

**Before:**
> "AI systems do not simply process data. They traverse decision surfaces."

**After:**
> "AI systems traverse decision surfaces — every inference is a choice point with downstream consequences."

**Violation:** Two-sentence fragmentation pattern. The first sentence negates; the second reveals. One sentence does the same work and removes the template.

---

### Example C4: Vague Declarative Opener

**Before:**
> "The enterprise AI landscape has undergone a fundamental architectural shift."

**After:** Cut it. Open with the specific shift. If the shift is that agents now act autonomously across system boundaries without human review at each step — say that. The announcement that a shift occurred adds nothing.

**Violation:** Vague declarative + adverb ("fundamentally"). States that change happened without naming what changed.

---

### Example C5: Throat-Clearing Meta-Joiner

**Before:**
> "This framework addresses this gap by defining a governance architecture built around one principle:"

**After:** State the principle. The sentence announcing it is filler.

**Violation:** Meta-joiner. The framework should argue for itself, not announce that it is about to make an argument.

---

### Example C6: Inanimate Subject Doing a Human Action

**Before:**
> "Runtime governance improves continuously through operational data."

**After:**
> "Security teams refine governance controls from each agent session."

**Violation:** False agency. Governance does not improve. Security teams improve it. Name the actor.

---

### Example C7: Pull-Quote Disguised as Analysis

**Before:**
> "No action escapes observation."

Sounds decisive. States nothing specific. Could appear on any security vendor's slide deck.

**After:**
> "Every agent action — request, response, tool call, output — is logged with session context, timestamp, and policy match result. Nothing is sampled."

**Violation:** Pull-quote. The specific version does the work the quotable version only announces.

---

# Reference: opening-mechanics.md

# Opening Mechanics

The opening is where chemistry is created or killed. Most openings fail because they prove the problem exists before showing what it costs the reader. The reader already knows the problem exists. Show them the cost.

---

## Three Openings That Work

### 1. The Destabilizing Claim

A single sentence that makes the reader distrust something they previously believed. The claim must be specific enough to require thought — not a vague provocation, not a question, not a trend statement. A claim.

**Pattern:** State something the reader accepted as true. Undercut it with precision.

**Examples:**
- "You can sign code. You cannot sign a decision."
- "The RFI passed. The breach still happened."
- "Encryption is not the gap. Visibility is."

**What makes it work:** The reader's first response is resistance — *that can't be right*. The second is curiosity — *what do they mean?* That gap is the opening.

**What makes it fail:** Vague versions ("Security is broken") produce no resistance and no curiosity. The claim must be specific enough to be wrong.

---

### 2. The Vivid Scenario

Second person, present tense, placing the reader inside a specific moment of risk or consequence before you have named your argument. The scenario is not a hypothetical ("imagine a company...") — it is a scene the reader can step into.

**Pattern:** You are [specific role]. It is [specific moment]. [Specific thing happens].

**Examples:**
- "You are in the post-incident review. The agent ran for six hours. Nobody can tell you what it did in the first three."
- "Your AI gateway approved the request. Your audit log shows it left. Your security team cannot tell you where it went."

**What makes it work:** The reader does not read the scenario — they inhabit it. The argument that follows is justification for what they already felt.

**What makes it fail:** Generic scenes ("Your team is struggling with AI security") produce no inhabitation. The scenario must be specific enough that only a subset of readers recognize themselves.

---

### 3. The Moment of Recognition

Naming the reader's current situation in terms they would use themselves. Precisely enough that they feel seen. Not a problem statement — a mirror.

**Pattern:** State the reader's internal experience of the problem, in their language, before naming the problem.

**Examples:**
- "You've been asked to approve AI in production. The honest answer is you don't know what 'approve' means yet."
- "The procurement team wants a vendor evaluation framework. You know the right framework doesn't exist yet."

**What makes it work:** The reader's response is recognition, not information receipt. They feel understood before you have made any argument.

**What makes it fail:** Narrator-from-a-distance versions ("Security teams are struggling to evaluate AI vendors") describe the reader instead of speaking to them.

---

## Three Openings That Always Fail

### 1. Statistics Proving the Trend Is Real

"87% of enterprises will deploy AI agents by 2026." The reader already knows AI adoption is real. This tells them nothing new and creates no tension.

**The fix:** Do not prove the trend exists. Show what it costs the reader that it does.

---

### 2. Capability Announcements

"Introducing the industry's first AI runtime governance framework." You have started with what you made, not with why it matters to the reader.

**The fix:** Start with what the reader cannot do today that they need to be able to do. The capability is the answer — earn the question first.

---

### 3. Rhetorical Questions the Reader Can Answer Without Feeling Anything

"Is your organization prepared for the AI security challenge?" The reader answers yes and moves on. Nothing destabilizes. Nothing is felt.

**The fix:** State the claim the question was hedging. If the honest version of your question is "you are not prepared," say that. The hedged version earns nothing.

---

# Reference: post-write-critique.md

# Post-Write Critique

Run every draft through these eight tests before it ships. Assign pass/fail. Require resolution before publication.

---

## The 9-Test Table

| Test | Question | Pass | Fail |
|------|----------|------|------|
| **Chemistry** | Does this create an emotional state, or just transfer information? | Reader feels something specific | Reader is informed but unmoved |
| **Signal Cost** | Does this take a position that risks something? | Clear POV that not everyone will agree with | Acceptable to all, memorable to none |
| **Sparkline** | Is there genuine tension between What Is and What Could Be? | Reader recognizes their reality in the opening | Leads with destination, skips the journey |
| **Becoming** | Is the product/idea serving a story about what the reader becomes? | Consequence before capability | Feature-first lede |
| **Conviction** | Is this traceable to a real belief or real choice? | Grounded in something demonstrable | Borrowed narrative, trend-chasing |
| **Moat** | Is this uniquely yours? | Cannot be republished by a competitor credibly | Logo-swap test fails |
| **Vase** | Is this the container or the experience version of this idea? | Reframed beyond the deliverable spec | Literal execution of the brief |
| **Strip Test** | Has emotion been stripped in the name of professionalism? | Precision and emotional engagement | Technically correct, biologically inert |
| **Flow** | Does this read like connected prose or a slide deck? | Ideas connect across paragraphs; transitions are implied, not explicit; rhythm varies across sections; no three consecutive paragraphs share the same structure | Back-to-back staccato paragraphs; every section ends in a punchy fragment; identical rhythm across consecutive sections; reads like bullets dressed as sentences |

---

## Scoring Guidance

- **0–2 fails**: Ship with minor revisions.
- **3–4 fails**: Substantial rewrite required. Identify the load-bearing failure — usually Chemistry, Sparkline, or Flow — and fix that first. The others often resolve as a consequence.
- **5+ fails**: Stop. The brief is wrong, not the draft. Return to the Pre-Write Brief and restart. Do not edit your way out of a bad brief.

---

## The Diagnostic Question

If the content began with what you wanted to say, it is not done yet.

The question that should come first: what do we want the reader to feel? Then: what story makes them feel it? Content built in that order passes most of these tests on the first draft. Content built in the wrong order fails most of them and cannot be edited into passing.

---

# Reference: pre-write-brief.md

# Pre-Write Brief

Answer all seven before writing a word. If any are unanswerable, the brief is wrong — not the draft.

---

## 1. The Feeling Question

What do I want the reader to feel at the end of this? Not think — feel. If you cannot name the emotional state, stop. You are not ready to write.

---

## 2. The Becoming Question

What does the reader become by engaging with this content? What does the problem cost them if they don't change? What does the world look like if they do?

**B2B calibration:** Answer at two levels.
- **Organizational becoming**: What does the security program become? What does the board conversation become? What does the next deployment decision become?
- **Personal becoming**: What does the CISO become — the person who can say yes, whose instincts were right, who got ahead of this before peers? Personal becoming drives sharing. Organizational becoming drives decisions. For thought leadership, answer both. For sales-adjacent content, answer organizational first.

**The one vivid case rule**: One specific scenario showing the cost of not changing does more becoming-work than three paragraphs of structural argument. Before writing an economic or ROI section, ask: what is the single most specific moment of consequence I can put the reader inside? Write that first. Let the structural argument follow as confirmation.

---

## 3. The Tribe Test

Who is this specifically for? Who might this alienate — and am I okay with that? If the answer to "who might this alienate" is "no one," rewrite the brief.

---

## 4. The Sparkline Check

Can I articulate the *What Is* in terms the reader would use to describe their own situation? Can I draw a clear line to *What Could Be*? Is the tension between them real, or manufactured?

**The asymmetry problem**: What Is is almost always stronger than What Could Be. Building the broken world is easier than painting the alternative with equal specificity. The failure mode is not skipping What Could Be — it is gesturing at it. Spend at least as much space earning and painting What Could Be as you spent building What Is.

---

## 5. The Conviction Test

Is this position traceable to something the organization actually believes and has demonstrated through real choices? Or are we aping the form?

**Epistemic honesty as a costly signal**: Explicitly labeling confidence levels — confirmed incidents vs. research findings vs. projections — signals you are making an argument, not building a case. Most vendor content treats all evidence as equally certain. Introducing gradations tells the reader you are not trying to persuade them past the evidence. That is unusual enough to be a signal of genuine conviction.

**The framework test**: If your content introduces a proprietary framework, it must feel *discovered*, not announced. Build the problem until the framework is the only logical resolution — then name it. Never introduce a framework by name in the first third of the piece. The name is the reward for following the argument, not the argument itself.

---

## 6. The Moat Test

Could a competitor publish this without changing the logo? If yes — stop. This is commodity content.

---

## 7. The Vase Test

Restate the brief as a vase (the literal deliverable: "publish a blog on AI runtime governance") and then as enjoy-flowers (the experience: "make CISOs feel the cost of invisible agent actions before they have heard the solution"). If you cannot write the enjoy-flowers version, your brief is still a vase.

Bold goals force this reframe. A goal of "publish two blogs this month" produces two blogs. A goal of "change how CISOs think about AI agent risk" produces a content strategy. Set the goal that requires a new playbook.

---

# Reference: principles.md

# The 5 Narrative Principles

These are the strategic foundation. They govern structure, positioning, and emotional architecture — not word choice. Apply them at the brief stage and validate them in post-write critique.

---

## 1. Story Is Chemistry, Not Communication

Narrative is not a format choice — it is a neurological event. Character-driven storytelling produces oxytocin, the chemical associated with trust and social bonding. Without emotional input, decision-making does not function.

**The standard:** Content is not finished when it is clear. It is finished when it is *felt*. Before drafting, ask: what do I want the reader to feel? Not what do I want them to know — what state do I want them in?

**The failure mode:** Content that contains only facts. A product announcement where a human face has been placed on a feature list and called storytelling. Aping the form without triggering the mechanism.

---

## 2. The Audience Is Running a Tribal Audit

Every piece of content runs through an ancient filter: *Are these people like me?* The audience is not evaluating credibility. They are running a social audit. Cheap signals — content optimized to offend no one — signal nothing. Costly signals — positions that risk something — are credible.

**The standard:** Your content must take a position that not everyone will agree with. If the draft is acceptable to all audiences, it is meaningful to none. Specificity about who you are *for* necessarily implies who you are *not for*.

**The failure mode:** Consensus content. The "we believe in innovation and security" opener. If you removed your logo and a competitor could claim the piece without changing a word, you have produced a cheap signal.

---

## 3. The Sparkline: Oscillate Between What Is and What Could Be

Great content moves between the reality the audience currently lives in (*What Is*) and the world that becomes possible (*What Could Be*). Tension between those two states creates narrative pull.

**The standard:** Establish genuine tension. Acknowledge the hard thing. Name the problem in terms the reader would use — not terms that make your product look inevitable. Then show the path. The story only works if the reader recognizes themselves in the What Is.

**The asymmetry problem:** What Is is almost always stronger than What Could Be. Building the broken world is easier than painting the alternative with equal specificity. The failure mode is not skipping What Could Be — it is gesturing at it. "Security becomes the condition for velocity" is a What Could Be compressed into a sentence when it needs a full movement. Spend at least as much space earning and painting What Could Be as you spent building What Is. Generic aspiration after specific dread is a broken sparkline.

**The failure mode:** Content that skips directly to What Could Be. "The future of AI security is here." You have not earned the destination because you never established the starting point. No tension, no transportation.

---

## 4. Specs Don't Stick. Becoming Does.

The best content does not describe a product. It tells a story about becoming. The product is a *vehicle*, not the subject. What does the reader become when they act? What does the organization become when they choose differently? The feature exists to serve the becoming.

**The standard:** Lead with consequence, not capability. The feature exists to serve the becoming.

**B2B calibration:** Becoming operates at two levels. Organizational becoming: what does the security program become, what does the board conversation become? Personal becoming: what does the CISO become — the person who can say yes, whose instincts were right, who got ahead of this before peers? Personal becoming drives sharing. Organizational becoming drives decisions. For thought leadership, answer both. For sales-adjacent content, answer organizational first.

**The failure mode:** Leading with the product. "Prisma AIRS now supports agent artifact scanning" as the lede. That is a spec. It tells the reader what the product is. It does not tell them what they become because of it.

---

## 5. Your Story Is a Moat. Your Product Is Not.

Competitors can copy features. They can replicate language. But a narrative rooted in genuine conviction cannot be separated from the conviction itself. A story built on genuine values, enacted over time through consistent choices, compounds.

**The standard:** Content must be traceable back to something real — a genuine belief, a genuine choice the organization has made, a genuine tension it is wrestling with. If a competitor could publish the same piece without anyone noticing the inconsistency, it is not a narrative. It is noise.

**The logo-swap test:** Remove the logo. Could a competitor, a standards body, or an analyst firm publish this unchanged? If yes, stop. Rewrite from genuine conviction.

**The failure mode:** Borrowed narrative. Publishing thought leadership not connected to any actual position the organization holds. Jumping on category trends without a genuine stake in them.

---

# Reference: red-flags.md

# Red Flags

Two sections: strategic signals (brief and narrative level) and mechanical patterns (word and sentence level). Both indicate cheap signals — content that informs without moving, positions without risking, or announces without delivering.

---

## Section 1: Strategic Red Flags

If any of these appear, stop and diagnose at the brief level before continuing.

| Flag | Problem | Fix |
|------|---------|-----|
| **"Industry-leading"** | Uncosted claim. You have not said what you gave up to lead. | Name the specific capability and the tradeoff it required. |
| **"We believe in..."** | Belief without behavior is decoration. | Replace with a choice the organization made that demonstrates the belief. |
| **"The future of X is here"** | You led with the destination before establishing the tension. You skipped the What Is. | Start over from the reader's current broken reality. |
| **"Comprehensive solution"** | Describes scope, not consequence. A spec masquerading as a story. | Ask what the reader becomes. Lead with that. |
| **"Enabling organizations to..."** | The product is doing the action, not the reader. Feature-first framing. | Flip it: what do organizations *become* when they can do this? |
| **"Seamless"** | Means the product works. That is the minimum, not the story. | Name the friction it removes and who felt that friction. |
| **Any lede a competitor could use unchanged** | Commodity territory. | Run the logo-swap test. If it passes, rewrite from genuine conviction. |
| **Zero acknowledgment of difficulty** | If the problem is easy, the solution is uninteresting. | Name the hard thing. The reader already knows it exists. |
| **Statistics as the opener** | Proves the trend is real. Does not show what it costs the reader. | Open with what it costs the reader that the trend is real. |
| **Rhetorical questions the reader can answer without feeling anything** | "Are you prepared for the AI security challenge?" The reader says yes and moves on. | State the claim the question was hedging. |
| **Three-part lists everywhere** | Formulaic structure. AI default. | Use two items when two is right. Match structure to content. |
| **"In today's landscape..."** | Filler opener. Signals nothing. | Cut to the first real sentence. |
| **"It's not just X, it's Y"** | Binary contrast formula. Sounds like insight, delivers the structure of insight without the substance. | State Y directly. Drop the "not just X" setup. |
| **Passive voice throughout** | No protagonist. No tension. No chemistry. | Find the actor. Make them the subject. |

---

## Section 2: Mechanical Patterns — Phrases to Remove

### Throat-Clearing Openers

Remove these. State the content directly.

- "Here's the thing:"
- "Here's what [X]" / "Here's why [X]"
- "The uncomfortable truth is"
- "It turns out"
- "The real [X] is"
- "Let me be clear"
- "The truth is,"
- "I'm going to be honest"
- "Can we talk about"
- "Here's the problem though"

Any "here's what/this/that" construction is throat-clearing. Cut it.

### Emphasis Crutches

No meaning added. Delete them.

- "Full stop." / "Period."
- "Let that sink in."
- "This matters because"
- "Make no mistake"
- "Here's why that matters"

### Business Jargon

| Avoid | Use instead |
|-------|-------------|
| Navigate (challenges) | Handle, address |
| Unpack (analysis) | Explain, examine |
| Lean into | Accept, embrace |
| Landscape (context) | Situation, field |
| Game-changer | Significant |
| Double down | Commit, increase |
| Deep dive | Analysis, examination |
| Take a step back | Reconsider |
| Moving forward | Next, from now |
| Circle back | Return to, revisit |

### Adverbs — Kill All of Them

No -ly words. No softeners, intensifiers, or hedges.

- "really", "just", "literally", "genuinely", "honestly"
- "simply", "actually", "deeply", "truly"
- "fundamentally", "inherently", "inevitably"
- "interestingly", "importantly", "crucially"

Also cut these filler phrases:
- "At its core"
- "In today's [X]"
- "It's worth noting"
- "At the end of the day"
- "When it comes to"
- "In a world where"
- "The reality is"

### Meta-Commentary

Remove. The argument should move — not announce its own structure.

- "Hint:" / "Plot twist:" / "Spoiler:"
- "But that's another post"
- "Let me walk you through..."
- "In this section, we'll..."
- "As we'll see..."
- "This framework addresses this gap by..."
- "[Product] introduces the concept of..."

### Vague Declaratives

If a sentence says something is important, deep, or structural without naming the specific thing — cut it or replace it with the specific thing.

- "The reasons are structural"
- "The implications are significant"
- "This is the deepest problem"
- "The stakes are high"
- "The consequences are real"

---

## Section 3: AI Voice Categories

Seven named patterns sourced from professional brand guidance. Each represents a category of AI writing behavior — not just individual phrases. Scan for these after any AI-assisted draft.

| AI Voice Category | Symptoms | Fix |
|-------------------|----------|-----|
| **Punctuation tells** | Colons or semicolons in headings; multiple em-dash pairs per paragraph; excessive quotation marks | Write direct headings without punctuation. End sentences with periods. Eliminate em-dashes entirely. |
| **Robotic style** | "It is imperative that stakeholders endeavor to…" / "Furthermore, it is noteworthy to mention…" / stiff, overly formal phrasing | Use active voice. Write as if speaking to someone in a meeting. Vary sentence structure. Use contractions in copy (blog, email, ads); spell out in formal collateral. |
| **Repetitive phrasing** | Same words or constructions in consecutive sentences or sections. "The benefits are numerous. These benefits include… Additionally, the benefits encompass…" / "today's modern SOCs" | Proofread for repetition across sentences, paragraphs, and sections. Vary word choice. Condense repeated points. |
| **Lack of authentic voice** | Generic statements with no specific examples or POV. Content that feels detached or purely factual on subjective topics. | Inject specific brand perspective. Use real anecdotes or customer scenarios. Show commitment to the mission. |
| **Predictable structure** | Every paragraph: topic sentence → three supporting points → conclusion. Explicit transitions ("In conclusion," "To summarize," "Therefore"). Consecutive paragraphs in the same rhythm. | Vary paragraph length and structure. Use implied transitions — let ideas flow without announcing them. Avoid prescriptive headings (introduction, summary, conclusion, or What/Why/How). |
| **Buzzwords and clichés** | "Leverage synergies," "paradigm shift," "disruptive innovation," "think outside the box," "game-changer," "future-proof" | Be specific. Replace the buzzword with exactly what you mean. Question every phrase: is this the most original way to say this? |
| **Flat nuance** | Technically correct but emotionally hollow. "Fluff paragraphs" that add word count without adding meaning. Inability to pick up on tone shifts. | Show rather than tell ("our solution is effective" → describe its specific impact). Use sensory language. Tailor tone to the reader's actual emotional situation. |

---

## Section 4: Overused Words and Wordy Phrases

Specific swap list. These are the highest-frequency AI-generated words and construction patterns.

### Words to Cut and Replace

| Cut | Replace with |
|-----|-------------|
| Delve / Dive into | Explore, learn, understand, examine |
| Game-changer | Innovation, advancement, shift |
| Solution | Feature, platform, product, program (name the specific thing) |
| Future-proof | Sustain, resilient, scalable, adaptable |
| Revolution / Revolutionary | Change, shift, movement, advancement |
| Testament to | Evidence, proof, demonstrates, shows |
| Elite / best-in-class / best-of-breed | Leading, proven, unequalled |
| Evolving (vague) | Developing, shifting, changing |
| Fast-paced | Dynamic, agile, high-speed |
| Fuse (combine) | Combine, connect, join |
| Even (as intensifier) | Remove entirely |
| Absolute confidence | Confidence (drop "absolute" — we cannot make guarantees) |
| Crown jewel | Valued, critical, invaluable |
| What, Why, How in headings | Use a descriptive noun, verb, or gerund phrase instead |

### Wordy Phrase Patterns to Cut

| Cut | Replace with |
|-----|-------------|
| In the ever-evolving landscape of X… | In X, Y happens… |
| In today's modern enterprises… | Modern enterprises face… |
| It is crucial to recognize… | Direct statement (or cut the opener entirely) |
| It's important to note… | Note that… or cut entirely |
| What sets X apart is… | Y sets X apart because… |
| More than just a tool, X is a game-changer | Use direct language: By using X, you can do Y |
| X is not just a solution, but a revolution | Direct language: X does Y |
| Beyond simple efficiency, X transforms workflows | X transforms workflows by doing Y |
| [Product] isn't only X, it's also Y | [Product] is both X and Y |
| [Product] doesn't just X, it does Y | [Product] does X and Y |
| [Product] doesn't do X, it does Y | [Product] does Y. (Focus on the positive. Drop the negation.) |

---

# Reference: structures.md

# Structures to Avoid

Structural patterns that produce the form of insight without the substance. These are the most common AI writing tells at the sentence and paragraph level.

---

## Binary Contrasts

Create false drama. State the point directly.

| Pattern | Problem |
|---------|---------|
| "Not because X. Because Y." / "Not because X, but because Y." | Telegraphed reversal |
| "[X] isn't the problem. [Y] is." | Formulaic reframe |
| "The answer isn't X. It's Y." | Predictable pivot |
| "It feels like X. It's actually Y." | Setup/reveal cliche |
| "The question isn't X. It's Y." | Rhetorical misdirection |
| "Not X. But Y." / "not X, it's Y" / "isn't X, it's Y" | Mechanical contrast |
| "It's not this. It's that." | Same formula, different words |
| "stops being X and starts being Y" | False transformation arc |
| "doesn't mean X, but actually Y" | Negation-then-assertion crutch |
| "is about X but not Y" | False distinction |
| "not just X but also Y" | Additive hedge |

**Instead:** State Y directly. "The problem is Y." Drop the negation entirely.

---

## Negative Listing

Listing what something is *not* before revealing what it *is*. A rhetorical striptease.

| Pattern | Problem |
|---------|---------|
| "Not a X... Not a Y... A Z." | Dramatic buildup through negation |
| "It wasn't X. It wasn't Y. It was Z." | Same structure, past tense |

**Instead:** State Z. The reader does not need the runway.

---

## Dramatic Fragmentation

Sentence fragments for emphasis read as manufactured profundity.

| Pattern | Problem |
|---------|---------|
| "[Noun]. That's it. That's the [thing]." | Performative simplicity |
| "X. And Y. And Z." | Staccato drama |
| "This unlocks something. [Word]." | Artificial revelation |
| "AI systems do not simply process data. They traverse decision surfaces." | Two-beat template — sounds sharp, is a pattern |

**Instead:** Complete sentences. Trust content over presentation.

---

## Rhetorical Setups

Announce insight rather than deliver it.

| Pattern | Problem |
|---------|---------|
| "What if [reframe]?" | Socratic posturing |
| "Here's what I mean:" | Redundant preview |
| "Think about it:" | Condescending prompt |
| "And that's okay." | Unnecessary permission |

**Instead:** Make the point. Let readers draw conclusions.

---

## False Agency

Giving inanimate things human verbs. AI writing loves this because it avoids naming the actor.

| Pattern | Problem |
|---------|---------|
| "a complaint becomes a fix" | The complaint did nothing. Someone fixed it. |
| "governance evolves with agent capability" | Governance does not evolve. Security teams change it. |
| "the decision emerges" | Decisions don't emerge. Someone decides. |
| "the culture shifts" | Cultures don't shift. People change behavior. |
| "the data tells us" | Data sits there. Someone reads it and draws a conclusion. |
| "the market rewards" | Markets don't reward. Buyers pay for things. |
| "Runtime governance improves continuously" | Security teams refine it. Name them. |

**Instead:** Name the human. If no specific person fits, use "you" to put the reader in the seat.

---

## Narrator-from-a-Distance

Floating above the scene instead of putting the reader in it.

| Pattern | Problem |
|---------|---------|
| "Nobody designed this." | Disembodied observation |
| "This happens because..." | Lecturer voice |
| "People tend to..." | Armchair sociologist |
| "Most enterprises face..." | Above the reader, not with them |

**Instead:** Put the reader in the room. "You don't sit down one day and decide to..." beats "Nobody designed this."

---

## Passive Voice

Every sentence needs a subject doing something.

| Pattern | Fix |
|---------|-----|
| "X was created" | Name who created it |
| "It is believed that" | Name who believes it |
| "Governance controls are applied" | Name who applies them |
| "The decision was reached" | Name who decided |

---

## Sentence Starters to Avoid

| Pattern | Fix |
|---------|-----|
| Sentences starting with What, When, Where, Which, Who, Why, How | Restructure. Lead with the subject or verb. |
| Paragraphs starting with "So" | Start with content |
| Sentences starting with "Look," | Remove |

Wh- openers become a crutch. "What makes this hard is..." → "The constraint is..." or name the specific constraint.

---

## Rhythm Patterns

| Pattern | Fix |
|---------|-----|
| Three-item lists | Use two or go to four — three is the AI default |
| Every paragraph ends punchily | Vary endings |
| Em-dashes | Remove. Use commas or periods. No em-dashes at all. |
| Staccato fragmentation | Don't stack short punchy sentences |
| "Not always. Not perfectly." | Hedging disguised as reassurance |

---

## Word Patterns

| Pattern | Problem |
|---------|---------|
| Lazy extremes (every, always, never, everyone, nobody) | False authority. Use specifics. |
| All adverbs (-ly words, "really," "just," "literally," "genuinely," "simply," "actually") | Empty emphasis. See red-flags.md. |

---

# Reference: voice-register.md

# Voice Register

Seven patterns that separate content that earns trust from content that announces it. These describe what effective content writing actually does — not what it says it does.

---

## Name the Real Problem Before Offering the Answer

Not "storytelling is important." But: "We treat it as a communication format, a way to make information more palatable. We are aping the form without understanding the mechanism."

**Application:** Identify the thing the reader is doing wrong and believes is right. Name it precisely. Then offer the reframe. The reader who recognizes their own mistake before you name it is already with you.

---

## Use Research as Narrative Fuel, Not Citation Armor

Evidence appears as a plot point that changes how the reader sees everything that came before it — not as a footnote that validates a claim.

**Application:** Introduce evidence at the moment it resolves tension you have already built. Not: "Studies show X (citation)." Instead: build to the question the reader is holding, then answer it with the research. The sequence is tension → evidence → reframe.

---

## Make the Counterintuitive Argument with Structural Precision

"The most strategically sound thing a marketing organization can do is make decisions that cannot be justified in a spreadsheet." Then build the case methodically, not emotionally.

**Application:** Lead with the counterintuitive claim. Do not soften it up front. Then earn it with structure. The claim comes first. The justification follows. Never lead with the justification.

---

## Close on a Question, Not a Conclusion

The closing question does more work than any summary paragraph. It should make the reader feel the weight of the argument, not summarize it. The question should be unanswerable in the moment — and linger.

**Application:** Write the summary paragraph you are tempted to write. Then delete it. Replace it with the single question that follows from everything you have argued. If the reader can answer it immediately, the question is too weak. Find the one that requires sitting with.

---

## Use Real Cases, Not Hypotheticals

Specificity is the proof of genuine conviction. "Imagine a company that..." signals that no real company exists. A named company, a named incident, a named decision is evidence that the argument came from observation, not abstraction.

**Application:** Replace "imagine a company that..." with a named company, a named incident, a named decision. If you cannot name it, the example is not doing the work you need. Find the real case or cut the example.

---

## Never Hedge the Headline

"Story Is Not a Communication Tool. It's a Drug." Not "Why Storytelling Matters More Than You Think." The headline is a claim, not a tease. If the honest version of your headline feels too bold, that is the signal you have something worth saying.

**Application:** Write the hedged headline first. Then remove the hedge. State the claim directly. Hedged headlines promise insight and deliver vagueness. Claim headlines risk being wrong — which is the point.

---

## Earn Abstraction with Specificity

General claims follow from specific cases — not the other way around. Build the specific case until the principle is the only available conclusion. Then name it. Never announce a framework or principle and then illustrate it — the illustration should come first, and the name should feel like a reward for following the argument.

**Application:** Before introducing any general principle, ask: have I earned this with a specific case the reader has already felt? If not, find the case first. The name of the framework is the reward for following the argument, not the argument itself.

---

## Frame Problems Systemically, Not as Reader Failure

"This gap exists across the industry because identity controls weren't designed for non-human actors" beats "Are you unknowingly leaving your enterprise exposed?" The first invites the reader in. The second puts them on defense before they've agreed the problem is theirs.

**Application:** Executive and practitioner audiences disengage when the opening move is accusatory. Frame the problem as a structural or industry-wide condition — something the reader is caught inside, not something they caused through inattention. The reader should recognize the problem, not feel blamed for it. Systemic framing ("most organizations face this because…") outperforms accusatory framing ("are you doing this wrong?") in thought leadership aimed at senior buyers. Accusatory openings work only in opinion pieces targeting a specific, named bad practice.

---

## Ground the Mechanism Before Using It as Evidence

Don't introduce a technical concept and immediately draw a conclusion from it. When the reader doesn't understand *why* the concept creates the problem, the conclusion floats — they can't follow the argument because you skipped the causal step.

**Application:** One sentence of plain-English explanation earns the conclusion. "MCP gives AI agents persistent access to tools across sessions — which means a permission granted once can execute indefinitely without re-validation" is the grounding sentence. Without it, "MCP creates a governance gap" is a claim the reader cannot verify. The pattern: [concept] + [why it creates the problem] + [therefore, this consequence]. The grounding sentence does not need to be technical. It needs to close the causal gap between what the reader already knows and what the argument requires them to accept.
