#!/usr/bin/env bash
# Create a topic folder with README.md from the Topic Hub template.
# Usage: ./_system/tools/new-topic.sh "Topic Name"
set -euo pipefail

if [[ $# -ne 1 || -z "${1//[[:space:]]/}" ]]; then
  echo 'Usage: new-topic.sh "Topic Name"' >&2
  exit 1
fi

name="$1"
case "$name" in
  .|..|*/*|*\\*|*$'\n'*|*$'\r'*)
    echo 'Topic name must be a single folder name, without slashes or line breaks.' >&2
    exit 1
    ;;
esac
root="$(cd "$(dirname "$0")/../.." && pwd)"
dir="$root/Topics/$name"
hub="$dir/README.md"

if [[ -e "$dir" || -L "$dir" ]]; then
  echo "Already exists: Topics/$name" >&2
  exit 1
fi

template="$root/_system/templates/Topic Hub.md"
[[ -r "$template" ]] || { echo "Cannot read template: $template" >&2; exit 1; }

mkdir -- "$dir"
while IFS= read -r line || [[ -n "$line" ]]; do
  # Literal substitution keeps characters such as & out of sed expressions.
  if [[ "$line" == '# {{title}}' ]]; then
    printf '# %s\n' "$name"
  else
    printf '%s\n' "$line"
  fi
done < "$template" > "$hub"
echo "Created Topics/$name/README.md."
echo "Add [[Topics/$name/README|$name]] to the Focus table in Today.md."
