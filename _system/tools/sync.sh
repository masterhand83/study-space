#!/usr/bin/env bash
# Commit everything and push, so browser AIs (via GitHub connectors) see your latest notes.
# Usage: ./_system/tools/sync.sh ["optional message"]
set -euo pipefail

cd "$(dirname "$0")/../.."

if [[ -z "$(git status --porcelain)" ]]; then
  echo "Nothing new to sync."
  exit 0
fi

git add -A
git commit -q -m "${1:-study: $(date '+%Y-%m-%d %H:%M')}"

if git remote get-url origin >/dev/null 2>&1; then
  git push -q && echo "Synced and pushed."
else
  echo "Committed. No GitHub remote yet, see _system/BROWSER_AI_SETUP.md step 1."
fi
