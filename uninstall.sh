#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/creo-ux-competitor"
AGENT_FILE="$HOME/.claude/agents/creo-ux-competitor.md"

echo "Uninstalling claude-competitor-analysis..."

if [ -d "$SKILL_DIR" ]; then
  rm -rf "$SKILL_DIR"
  echo "  Removed skill: $SKILL_DIR"
else
  echo "  Skill not found: $SKILL_DIR (skipping)"
fi

if [ -f "$AGENT_FILE" ]; then
  rm -f "$AGENT_FILE"
  echo "  Removed agent: $AGENT_FILE"
else
  echo "  Agent not found: $AGENT_FILE (skipping)"
fi

echo "Uninstalled successfully."
