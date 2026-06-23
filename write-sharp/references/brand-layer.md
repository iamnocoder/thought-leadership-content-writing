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
