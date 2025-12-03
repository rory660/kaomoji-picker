#!/usr/bin/env bash

# kaomoji-picker: choose a kaomoji using gum and output it
# Requires: gum (https://github.com/charmbracelet/gum), jq, curl

# Fetch kaomojis from a GitHub gist or API
KAOMOJI_URL="https://raw.githubusercontent.com/rory660/kaomoji-picker/refs/heads/main/kaomojis.json"

# Fetch and parse the kaomojis
KAOMOJIS=$(curl -s "$KAOMOJI_URL" | jq -r '.[]' 2>/dev/null)

CHOICE=$(echo "$KAOMOJIS" | gum choose)

echo "$CHOICE" | pbcopy
echo "Copied to clipboard: $CHOICE"