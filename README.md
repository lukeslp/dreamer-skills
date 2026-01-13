# Dreamer Skills

Custom Claude Code skills for dr.eamer.dev development workflows.

## Installation

This plugin is installed at `~/.claude/plugins/marketplaces/dreamer-skills/`

## Available Skills

| Skill | Trigger | Purpose |
|-------|---------|---------|
| `/session-start` | "start session", "begin work" | Full session startup ritual with scout + planner |
| `/session-end` | "done for today", "wrapping up" | Commit work, run checkpoint orchestrator |
| `/scout` | "quick scan", "health check" | Fast project reconnaissance |
| `/quality-audit` | "full audit", "pre-release" | Parallel a11y/perf/security/deps review |
| `/ux-journey` | "review the UX", "customer journey" | Design, accessibility, gamification analysis |
| `/data-artist` | "visualize this data", "make beautiful" | "Data is Beautiful" aesthetic guidance |
| `/data-fetch` | "fetch data from", "get census data" | Multi-source data aggregation (17 APIs) |
| `/sm-orchestrate` | "start services", "service group" | Service manager orchestration |

## Key Features

### Parallel Execution
All skills emphasize launching agents in PARALLEL, not sequentially:

```
✅ CORRECT: @geepers_a11y + @geepers_design + @geepers_perf in ONE message
❌ WRONG: @geepers_a11y, then @geepers_design, then @geepers_perf
```

### Agent Dependencies

Skills coordinate with these geepers agents:
- Session: `@geepers_scout`, `@geepers_planner`, `@geepers_orchestrator_checkpoint`
- Quality: `@geepers_a11y`, `@geepers_perf`, `@geepers_security`, `@geepers_deps`
- UX: `@geepers_design`, `@geepers_a11y`, `@geepers_game`
- DataVis: `@geepers_datavis_math`, `@geepers_datavis_color`, `@geepers_datavis_story`, `@geepers_datavis_viz`, `@geepers_datavis_data`

### Hooks

The plugin includes hooks that inject context:
- **SessionStart**: Displays skill reference table
- **PreCompact**: Reminds about `/session-end` before context compaction

## Shared Library Integration

Skills integrate with `~/shared/`:
- **Orchestration**: DreamCascade, DreamSwarm patterns
- **Data Fetching**: 17 API clients (Census, arXiv, GitHub, NASA, etc.)
- **LLM Providers**: 12+ providers with unified interface

## Usage Examples

```
# Start a work session
/session-start

# Quick health check mid-session
/scout

# Pre-release quality audit
/quality-audit

# UX review for new feature
/ux-journey

# Create visualization
/data-artist

# Fetch external data
/data-fetch census housing

# Manage service groups
/sm-orchestrate start ai-stack
```

## Author

Luke Steuber (luke@lukesteuber.com)

## License

MIT License - See LICENSE file
