# Avatar Color and Expression Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Update the American comic halftone avatar skill so batch backgrounds are visually unique and expressions consistently reach approved level-3 editorial-comic intensity.

**Architecture:** Keep the existing single-file skill contract and add two positive recipes: a pre-generation batch palette allocation step and a two-cue expression recipe. Mirror the validated source into the local Codex installation and portable archive, then update the repository summary and publish the same commit to GitHub.

**Tech Stack:** Markdown Agent Skill, bundled PNG references, Bash install/archive tooling, Git.

## Global Constraints

- Preserve the existing 22–35 age rule, five-image reference contract, facial abstraction, composition, print texture, and low-saturation palette boundaries.
- Do not add or replace reference images.
- Do not generate sample artwork.
- Do not delete `/neat` cleanup candidates.

---

### Task 1: Batch palette and expression contract

**Files:**
- Modify: `american-comic-halftone-avatar/SKILL.md`
- Modify: `README.md`
- Rebuild: `american-comic-halftone-avatar.tar.gz`
- Sync: `/Users/admin/.codex/skills/american-comic-halftone-avatar/`

**Interfaces:**
- Consumes: the existing five-image reference contract and the approved design in `docs/superpowers/specs/2026-07-20-avatar-color-expression-design.md`.
- Produces: a skill prompt with explicit batch palette allocation, visually distinct backgrounds, level-3 expression intensity, and two coordinated expression cues.

- [x] **Step 1: Verify the baseline fails**

Run:

```bash
rg -n '同一批次.*(全部不同|不得重复)|第 3 档|最多.*两个.*(表情|线索)|batch palette' american-comic-halftone-avatar/SKILL.md
```

Expected: no matches; the current skill lacks the approved behavior.

- [x] **Step 2: Implement the positive recipes**

Update the workflow, reference roles, expression section, color section, common-failure table, prompt template, and self-check. Use positive structural language: pre-allocate the batch palette and combine one primary plus one supporting expression cue.

- [x] **Step 3: Update the repository summary**

Change the README description from “克制社论漫画表情” to wording that accurately states medium, visible editorial-comic expression.

- [x] **Step 4: Validate the updated source**

Run the official skill validator, `git diff --check`, static requirement searches, and asset/reference-count checks. Expected: all checks pass and the fixed input list remains exactly five.

- [x] **Step 5: Sync distribution surfaces**

Install the validated source to `/Users/admin/.codex/skills/american-comic-halftone-avatar/`, rebuild `american-comic-halftone-avatar.tar.gz`, and compare source, installed copy, and extracted archive. Expected: no differences.

- [ ] **Step 6: Commit and publish**

Stage only the skill, README, design, plan, and archive. Commit with `Update avatar batch colors and comic expression`. Push the current branch, verify a fast-forward to `main`, and confirm remote `main` equals local `HEAD`.

- [ ] **Step 7: Run final `/neat` audit**

Re-run inventory and knowledge checks. Report every fact surface and retain all cleanup candidates until the user explicitly confirms cleanup after the report.
