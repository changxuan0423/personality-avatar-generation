#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="everme-digital-avatar-generation"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_ROOT="$CODEX_HOME_DIR/skills"
TARGET_DIR="$TARGET_ROOT/$SKILL_NAME"

if [[ ! -f "$SOURCE_DIR/SKILL.md" ]]; then
  echo "Error: SKILL.md not found. Run this script from the $SKILL_NAME package." >&2
  exit 1
fi

if [[ ! -d "$SOURCE_DIR/assets" ]]; then
  echo "Error: assets directory not found. The reference images are required." >&2
  exit 1
fi

mkdir -p "$TARGET_ROOT"

if [[ -d "$TARGET_DIR" ]]; then
  BACKUP_DIR="$TARGET_DIR.backup.$(date +%Y%m%d%H%M%S)"
  mv "$TARGET_DIR" "$BACKUP_DIR"
  echo "Existing skill backed up to: $BACKUP_DIR"
fi

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"
cp -R "$SOURCE_DIR/assets" "$TARGET_DIR/assets"

echo "Installed EverMe digital avatar skill to:"
echo "$TARGET_DIR"
echo
echo "Open a new Codex session and ask:"
echo "使用 EverMe 数字头像生成，生成角色：营养顾问"
