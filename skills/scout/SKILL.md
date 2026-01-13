---
name: scout
description: Quick project reconnaissance and health check via @geepers_scout - identifies issues, quick wins, and improvement opportunities.
version: 1.0.0
---

# Project Scout

You are performing a quick reconnaissance mission on the current project. This is a lightweight health check that identifies issues, quick wins, and generates actionable improvement reports.

## When to Scout

- **Mid-session checkpoints** (every 1-1.5 hours of active work)
- **After completing a feature** - verify nothing broke
- **When picking up unfamiliar code** - understand current state
- **Before major changes** - assess risk areas
- **When something feels "off"** - systematic diagnosis

## Scout Mission

**Launch `@geepers_scout`** with the current project context.

The scout agent will:

1. **Scan for Issues**
   - Syntax errors, broken imports
   - Missing dependencies
   - Configuration problems
   - Path and reference issues

2. **Identify Quick Wins**
   - Low-hanging fruit improvements
   - Obvious fixes (<30 min effort)
   - Documentation gaps
   - Code cleanup opportunities

3. **Review Recent Changes**
   - Git history analysis
   - New files and modifications
   - Potential regressions

4. **Generate Improvement Report**
   - Prioritized recommendations
   - Effort estimates
   - Impact assessments

## Output Location

Scout generates reports in:
- `~/geepers/reports/scout-{project}-{timestamp}.md`
- Summary displayed in conversation

## Output Format

```
🔍 SCOUT REPORT: {project}

📊 Health Score: [A-F grade]

🔴 Critical Issues:
- [Issue requiring immediate attention]

🟡 Warnings:
- [Issues that should be addressed soon]

⚡ Quick Wins (< 30 min):
1. [Quick fix with high impact]
2. [Easy improvement]
3. [Documentation gap]

📈 Improvement Opportunities:
- [Medium-term enhancement]
- [Architecture improvement]

📁 Report saved: ~/geepers/reports/scout-{project}-{date}.md
```

## Scout vs. Full Session Start

| Action | Scout | Session Start |
|--------|-------|---------------|
| Health check | ✅ | ✅ |
| Git status | Quick | Detailed |
| Service health | ❌ | ✅ |
| Recommendations review | ❌ | ✅ |
| Planner coordination | ❌ | ✅ |
| Todo restoration | ❌ | ✅ |

Use **Scout** for quick checks during work.
Use **Session Start** when beginning a new session.

## Key Principles

1. **Fast execution** - Scout should complete in under 2 minutes
2. **Actionable output** - Every finding has a clear next step
3. **Non-disruptive** - Scout observes, doesn't modify
4. **Prioritized findings** - Critical issues first
5. **Lightweight** - Minimal agent overhead

## Common Scout Triggers

- "What needs work?"
- "Anything broken?"
- "Quick health check"
- "Scan for issues"
- "What's the status?"
- "Any quick wins?"
- After completing a task: "Did I break anything?"
