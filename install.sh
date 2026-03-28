#!/usr/bin/env bash
set -euo pipefail

REPO="creo-kit/claude-competitor-analysis"
CLONE_DIR="/tmp/claude-competitor-analysis-install"
SKILL_DIR="$HOME/.claude/skills/creo-ux-competitor"
AGENT_DIR="$HOME/.claude/agents"

cleanup() {
  rm -rf "$CLONE_DIR"
}
trap cleanup EXIT

echo "Installing claude-competitor-analysis..."

# Shallow clone
git clone --depth 1 "https://github.com/${REPO}.git" "$CLONE_DIR"

# Create target directories
mkdir -p "$SKILL_DIR"
mkdir -p "$AGENT_DIR"

# Copy skill
cp "$CLONE_DIR/skills/creo-ux-competitor/SKILL.md" "$SKILL_DIR/SKILL.md"

# Copy agent
cp "$CLONE_DIR/agents/creo-ux-competitor.md" "$AGENT_DIR/creo-ux-competitor.md"

echo "Installed successfully."
echo "  Skill: $SKILL_DIR/SKILL.md"
echo "  Agent: $AGENT_DIR/creo-ux-competitor.md"
echo ""
echo "Usage: /creo ux-competitor <url>"
