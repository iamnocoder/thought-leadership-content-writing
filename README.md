# write-sharp

A content standard for external-facing marketing and thought-leadership writing.
It combines a **narrative framework** (story structure, emotional chemistry, positioning, opening mechanics, voice) with **AI-pattern removal** (passive voice, binary contrasts, throat-clearing, false agency) — applied in three phases: a pre-write brief, drafting craft rules, and a post-write critique.

It is packaged as an [Agent Skill](https://docs.anthropic.com/en/docs/agents-and-tools/agent-skills) (the open `SKILL.md` format) and ships with a combined single-file build so it works in **any** agent framework.

- **Author:** Sailesh Mishra · [LinkedIn](https://www.linkedin.com/in/saileshmishra-aisecurity/)
- **License:** [CC BY 4.0](LICENSE) — free to use and adapt, including commercially, **with attribution**.
- **Current version:** see [`VERSION`](VERSION) / [latest release](https://github.com/iamnocoder/write-sharp-skill/releases/latest)

> **Always use the latest release.** Older tags remain visible for history, but the canonical, supported version is whatever `releases/latest` points to.

---

## Use it for / not for

**Use for:** blog posts, articles, whitepapers, position papers, case studies, LinkedIn & social posts, marketing emails, campaign briefs, sales narratives, thought leadership, launch content, website copy.

**Not for:** technical docs, internal comms, academic papers, legal/compliance docs, support content, UX microcopy, data reports, or plain factual press releases.

---

## Install

### Claude Code
Copy the skill folder into your skills directory:

```bash
git clone https://github.com/iamnocoder/write-sharp-skill.git
cp -R write-sharp-skill/write-sharp ~/.claude/skills/write-sharp
```

Then in Claude Code, type `/write-sharp` (or just ask it to write/review marketing content and it will trigger automatically).

To update later:

```bash
cd write-sharp-skill && git pull
cp -R write-sharp ~/.claude/skills/write-sharp
```

### Claude.ai / Claude apps / Cowork (Skills)
1. Download the latest release `.zip` from the [Releases page](https://github.com/iamnocoder/write-sharp-skill/releases/latest).
2. Unzip it; inside is a `write-sharp/` folder containing `SKILL.md`.
3. Upload that folder where the product accepts custom skills.

### Claude Agent SDK / Claude API
Point your skill loader at the `write-sharp/` directory, or fetch `write-sharp/SKILL.md` (plus `references/`) at runtime. The format is the standard Anthropic Agent Skill.

### Codex, Gemini, or any other agent framework
Frameworks that don't read the `SKILL.md` format can still use the skill — it's just instructions. Load the **combined single file** [`dist/write-sharp.md`](dist/write-sharp.md) as system / instruction context. It contains the full skill in one block.

```bash
curl -fsSL https://raw.githubusercontent.com/iamnocoder/write-sharp-skill/main/dist/write-sharp.md -o write-sharp.md
```

---

## Access via API (no server required)

Because the repo is public, GitHub already exposes it as an API. Nothing to host.

**Get the latest version number and release metadata:**
```bash
curl -s https://api.github.com/repos/iamnocoder/write-sharp-skill/releases/latest
```
The JSON includes `tag_name` (e.g. `v1.0.0`) and a `zipball_url` to download that exact version.

**Read machine-readable metadata** (name, version, file list):
```bash
curl -s https://raw.githubusercontent.com/iamnocoder/write-sharp-skill/main/manifest.json
```

**Fetch the skill content directly:**
```bash
# the entry point
curl -s https://raw.githubusercontent.com/iamnocoder/write-sharp-skill/main/write-sharp/SKILL.md
# the whole skill as one file
curl -s https://raw.githubusercontent.com/iamnocoder/write-sharp-skill/main/dist/write-sharp.md
```

> Tip: fetching from `main` always returns the most recent committed version. Fetching from a tag (e.g. `.../v1.0.0/...`) pins a specific version.

---

## Versioning

This project follows [Semantic Versioning](https://semver.org) and tracks changes in [`CHANGELOG.md`](CHANGELOG.md).

To publish a new version (maintainer workflow):
1. Edit the skill files under `write-sharp/`.
2. Bump the number in `VERSION` and in `write-sharp/SKILL.md` metadata.
3. Run `./build.sh` to regenerate `dist/write-sharp.md`.
4. Add an entry to `CHANGELOG.md`.
5. Commit, then create a GitHub Release with a tag like `v1.1.0`.

The latest release is always the supported one.

---

## Attribution

If you use or adapt this skill, credit:

> write-sharp skill by Sailesh Mishra — https://www.linkedin.com/in/saileshmishra-aisecurity/

See [LICENSE](LICENSE) for the full CC BY 4.0 terms.