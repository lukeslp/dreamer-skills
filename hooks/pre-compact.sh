#!/bin/bash
# Dreamer Skills - Pre-Compact Hook
# Reminds about session-end skill before compaction

cat << 'COMPACT_REMINDER'
<pre-compact-reminder>
Before context compaction, consider running `/session-end` skill to:
1. Commit current work
2. Update recommendations
3. Create session checkpoint

Quick: `git add -A && git commit -m "session checkpoint: $(date '+%Y-%m-%d %H:%M')"`
</pre-compact-reminder>
COMPACT_REMINDER

exit 0
