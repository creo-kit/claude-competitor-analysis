# claude-competitor-analysis

AI-powered competitor UX analysis skill for Claude Code -- analyze competitor websites for UX patterns, strengths, weaknesses, and opportunities.

[![GitHub stars](https://img.shields.io/github/stars/creo-kit/claude-competitor-analysis?style=flat-square)](https://github.com/creo-kit/claude-competitor-analysis)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

## What It Does

- **Analyzes competitor websites** -- navigates sites as a real user, capturing screenshots and documenting every meaningful screen
- **Identifies UX patterns** -- evaluates onboarding flows, core features, pricing pages, mobile experience, and more
- **Benchmarks against best practices** -- scores competitors using Nielsen's 10 usability heuristics (0-4 each, total out of 40) and five competitive dimensions (simplicity, speed, clarity, delight, trust)
- **Delivers competitive positioning insights** -- extracts what competitors do well, what they do poorly, and where opportunities exist for your product

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/creo-kit/claude-competitor-analysis/main/install.sh | bash
```

Or clone manually:

```bash
git clone https://github.com/creo-kit/claude-competitor-analysis.git /tmp/claude-competitor-analysis
cp -r /tmp/claude-competitor-analysis/skills/creo-ux-competitor ~/.claude/skills/creo-ux-competitor
cp /tmp/claude-competitor-analysis/agents/creo-ux-competitor.md ~/.claude/agents/creo-ux-competitor.md
rm -rf /tmp/claude-competitor-analysis
```

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/creo-kit/claude-competitor-analysis/main/uninstall.sh | bash
```

## Usage

Analyze a single competitor:

```
/creo ux-competitor https://example.com
```

Compare two competitors side by side:

```
/creo ux-competitor compare https://competitor-a.com https://competitor-b.com
```

Reports are saved to `.claude/reports/competitor-[name]-[YYYYMMDD].md` in your project directory.

### What You Get

Each analysis produces a structured report containing:

- Executive summary
- Company overview (audience, value proposition, pricing)
- Jobs-to-be-done (JTBD) analysis
- Flow-by-flow breakdown (homepage, onboarding, core feature, mobile)
- Nielsen heuristic evaluation with scores and evidence
- Competitive scorecard across five dimensions
- Actionable recommendations (immediate and future)

## Part of Creo

This skill is a standalone extraction from the [Creo](https://github.com/oyusypenko/creo) design and development toolkit. Creo provides 12 skills covering design review, UX analysis, marketing content, SEO, DevOps, CI/CD, testing, and marketing site orchestration.

## Compatibility

| Platform | Status |
|----------|--------|
| Claude Code | Primary target |
| Codex CLI | Compatible |
| Cursor | Compatible |
| Gemini CLI | Compatible |

## License

[MIT](LICENSE)
