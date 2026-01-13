#!/bin/bash
# Dreamer Skills - Session Start Hook
# Injects skill references for session management

cat << 'SKILL_REMINDER'
<dreamer-skills-context>
╔═══════════════════════════════════════════════════════════════╗
║              🌟 DREAMER SKILLS AVAILABLE 🌟                  ║
╚═══════════════════════════════════════════════════════════════╝

┌─────────────────┬──────────────────────────────────────────────┐
│ SKILL           │ PURPOSE                                      │
├─────────────────┼──────────────────────────────────────────────┤
│ /session-start  │ Full startup ritual (scout + planner)        │
│ /session-end    │ Commit + checkpoint orchestrator             │
│ /scout          │ Quick project health scan                    │
│ /quality-audit  │ Parallel a11y/perf/security/deps review      │
│ /ux-journey     │ UX design + accessibility analysis           │
│ /data-artist    │ "Data is Beautiful" visualization guidance   │
│ /data-fetch     │ Multi-source data aggregation (17 APIs)      │
│ /sm-orchestrate │ Service manager orchestration                │
└─────────────────┴──────────────────────────────────────────────┘

⚡ CRITICAL: Always launch agents/skills in PARALLEL!
   ❌ BAD:  @agent1 → then → @agent2 → then → @agent3
   ✅ GOOD: @agent1 + @agent2 + @agent3 in ONE message

🔧 Service Check: Run `sm status` or `/sm-orchestrate status`
</dreamer-skills-context>
SKILL_REMINDER

exit 0
