#!/usr/bin/env bash
# Builds dist/write-sharp.md — a single self-contained file combining SKILL.md
# and every reference, so non-Claude agent frameworks (Codex, Gemini, custom
# agents, etc.) can ingest the whole skill as one block of instructions.
#
# Usage:  ./build.sh
set -euo pipefail
cd "$(dirname "$0")"

VERSION="$(cat VERSION)"
OUT="dist/write-sharp.md"
mkdir -p dist

{
  echo "# Write Sharp — Combined Skill (v${VERSION})"
  echo
  echo "> Single-file build of the write-sharp skill. License: CC BY 4.0 — Sailesh Mishra."
  echo "> Source of truth: write-sharp/SKILL.md plus write-sharp/references/*."
  echo "> To use in any agent framework, load this entire file as system/instruction context."
  echo
  echo "---"
  echo
  cat write-sharp/SKILL.md
  echo
  for f in write-sharp/references/*.md; do
    echo
    echo "---"
    echo
    echo "# Reference: $(basename "$f")"
    echo
    cat "$f"
  done
} > "$OUT"

echo "Built $OUT ($(wc -l < "$OUT") lines) for version ${VERSION}"
