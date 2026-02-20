# Dreamer Skills

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Custom Claude Code skills for development workflows.

## Installation

```
/plugin add lukeslp/dreamer-skills
```

## Available Skills

| Skill | Purpose |
|-------|---------|
| `/session-start` | Session startup - checks project state and plans work |
| `/session-end` | Wrap up - commits work and runs maintenance |
| `/scout` | Quick project health check |
| `/quality-audit` | Full accessibility, performance, security, and dependency review |
| `/ux-journey` | UX design and accessibility analysis |
| `/data-artist` | Data visualization guidance |
| `/data-fetch` | Multi-source data aggregation (17+ APIs) |
| `/sm-orchestrate` | Service manager orchestration |

## Usage

```
/session-start          # Start a work session
/scout                  # Quick health check
/quality-audit          # Pre-release quality audit
/ux-journey             # UX review for a feature
/data-artist            # Create a visualization
/data-fetch census housing   # Fetch external data
/sm-orchestrate start group  # Manage service groups
```

## Author

Luke Steuber (luke@lukesteuber.com)

## License

MIT License - See LICENSE file
