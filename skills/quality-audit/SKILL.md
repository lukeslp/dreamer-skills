---
name: quality-audit
description: Comprehensive quality audit running a11y, performance, security, and dependency agents in parallel for production readiness.
version: 1.0.0
---

# Quality Audit

You are performing a comprehensive quality audit of the current project. This is a thorough review that examines accessibility, performance, security, and dependencies to ensure production readiness.

## Quality Domains

The audit covers four critical domains:

### 1. Accessibility (@geepers_a11y)
- WCAG 2.1 AA compliance
- Keyboard navigation
- Screen reader compatibility
- Color contrast ratios
- Focus management
- ARIA usage

### 2. Performance (@geepers_perf)
- Response time analysis
- Memory usage profiling
- CPU utilization
- Database query optimization
- Bundle size analysis
- Loading performance

### 3. Security (@geepers_security)
- Vulnerability scanning
- Dependency audit
- Secret exposure check
- OWASP top 10 review
- Input validation
- Authentication/authorization

### 4. Dependencies (@geepers_deps)
- Outdated packages
- Security vulnerabilities (CVEs)
- License compliance
- Unused dependencies
- Version conflicts

## Execution Strategy

**Launch all four agents in PARALLEL** using Task tool:

```
Launch simultaneously:
1. @geepers_a11y - Accessibility audit
2. @geepers_perf - Performance profiling
3. @geepers_security - Security review
4. @geepers_deps - Dependency audit
```

This parallel execution significantly reduces total audit time.

## Output Format

```
📋 QUALITY AUDIT REPORT

Project: {name}
Date: {timestamp}
Auditor: geepers_orchestrator_quality

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                SUMMARY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Overall Grade: [A-F]

♿ Accessibility:  [PASS/WARN/FAIL] - {score}%
⚡ Performance:    [PASS/WARN/FAIL] - {score}%
🔒 Security:       [PASS/WARN/FAIL] - {score}%
📦 Dependencies:   [PASS/WARN/FAIL] - {score}%

Production Ready: [YES/NO/CONDITIONAL]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            CRITICAL ISSUES
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔴 {count} Critical Issues:
1. [SECURITY] {description}
2. [A11Y] {description}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
             WARNINGS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🟡 {count} Warnings:
1. [PERF] {description}
2. [DEPS] {description}

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
      DOMAIN-SPECIFIC REPORTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[Detailed findings from each agent]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
         RECOMMENDATIONS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Immediate (Block Release):
1. {fix required before deployment}

Short-term (This Week):
1. {important improvement}

Long-term (Tech Debt):
1. {architectural consideration}
```

## When to Run Quality Audit

- **Pre-release** - Before any production deployment
- **Pre-PR** - Before creating significant pull requests
- **Periodic** - Monthly for maintained projects
- **After major features** - Ensure new code meets standards
- **Post-incident** - After fixing production issues

## Quality Thresholds

| Domain | Pass | Warn | Fail |
|--------|------|------|------|
| Accessibility | ≥90% | 70-89% | <70% |
| Performance | p95 <500ms | <1s | >1s |
| Security | 0 critical | 0 high | any critical |
| Dependencies | 0 CVE high+ | <3 medium | any high+ |

## Alternative: Quick Quality Check

For faster but less thorough checks, use individual agents:
- `/scout` - General health (includes some quality signals)
- Direct agent: `@geepers_a11y` - A11y only
- Direct agent: `@geepers_perf` - Performance only

## Key Principles

1. **Parallel execution** - All agents run simultaneously
2. **Comprehensive coverage** - All four quality domains
3. **Actionable output** - Clear pass/fail with fixes
4. **Prioritized findings** - Critical before warnings
5. **Production focus** - Is this deployable?

## Integration with CI/CD

Quality audit findings can inform:
- Deployment gates (block on critical)
- PR review requirements
- Technical debt tracking
- Sprint planning (remediation work)

## Related Skills

- `/scout` - Quick health check that includes some quality signals
- `/ux-journey` - Includes accessibility as part of broader UX audit
- `/session-start` - May trigger quality checks during startup
- `/session-end` - Documents quality status in session checkpoint
