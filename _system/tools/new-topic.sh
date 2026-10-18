#!/usr/bin/env bash
# Create a topic folder with a hub note from the Topic Hub template.
# Usage: ./_system/tools/new-topic.sh "Topic Name"
set -euo pipefail

name="${1:?Usage: new-topic.sh \"Topic Name\"}"
root="$(cd "$(dirname "$0")/../.." && pwd)"
dir="$root/Topics/$name"
hub="$dir/$name.md"

if [[ -e "$hub" ]]; then
  echo "Already exists: Topics/$name/$name.md"
  exit 1
fi

mkdir -p "$dir"
sed "s/{{title}}/$name/g" "$root/_system/templates/Topic Hub.md" > "$hub"
echo "Created Topics/$name/$name.md. Add it to the Focus table in Today.md."
