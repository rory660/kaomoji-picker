#!/usr/bin/env bash

# kaomoji-picker: choose a kaomoji using gum and output it
# Requires: gum (https://github.com/charmbracelet/gum), jq, curl

# Fetch kaomojis from a GitHub gist or API
KAOMOJI_URL=""

# Fetch and parse the kaomojis
KAOMOJIS=$(curl -s "$KAOMOJI_URL" | jq -r '.[]' 2>/dev/null)

# Fallback to local list if fetch fails
if [ -z "$KAOMOJIS" ]; then
  KAOMOJIS="¯\"
fi

CHOICE=$(echo "$KAOMOJIS" | gum choose)

echo "$CHOICE" | pbcopy
echo "Copied to clipboard: $CHOICE"