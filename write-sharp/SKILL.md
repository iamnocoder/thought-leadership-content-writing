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
