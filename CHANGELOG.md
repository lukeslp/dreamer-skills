# Changelog

All notable changes to dreamer-skills will be documented in this file.

## [1.2.0] - 2026-01-13

### Changed
- **BREAKING**: Trimmed all skill descriptions to ~20 words for better invocation
- Replaced `@geepers_uxpert` with verified `@geepers_design` agent in ux-journey
- Removed "coming soon" `/research-deep` reference from data-fetch

### Added
- Related Skills section to quality-audit skill
- CHANGELOG.md for version tracking
- CRITIC.md analysis report

### Fixed
- UX-001: Skill descriptions were too verbose (50-100 words → 20 words)
- False affordance from non-existent skill reference

## [1.1.0] - 2026-01-12

### Added
- `/data-fetch` skill - Multi-source data aggregation (17 APIs)
- `/sm-orchestrate` skill - Service manager orchestration
- README.md documentation
- LICENSE (MIT)
- Enhanced session-start hook with ASCII table
- Pre-compact hook for session continuity

### Changed
- Updated plugin.json with repository and keywords
- Version bump to 1.1.0

## [1.0.0] - 2026-01-12

### Added
- Initial release with 6 core skills:
  - `/session-start` - Session startup rituals
  - `/session-end` - Session end/checkpoint rituals
  - `/scout` - Quick project reconnaissance
  - `/quality-audit` - Comprehensive quality review
  - `/ux-journey` - UX and customer experience analysis
  - `/data-artist` - "Data is Beautiful" visualization
- Hooks for SessionStart and PreCompact events
- Integration with 50+ geepers agents
