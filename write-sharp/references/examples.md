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
