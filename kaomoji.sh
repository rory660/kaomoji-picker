#!/usr/bin/env bash

# kaomoji-picker: choose a kaomoji by mood using gum and copy to clipboard
# Requires: gum (https://github.com/charmbracelet/gum), jq, curl (for remote)

KAOMOJI_URL="https://raw.githubusercontent.com/rory660/kaomoji-picker/refs/heads/main/kaomojis.json"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_FILE="$SCRIPT_DIR/kaomojis.json"

# Parse flags
USE_LOCAL=false
while [[ $# -gt 0 ]]; do
  case $1 in
    -l|--local)
      USE_LOCAL=true
      shift
      ;;
    *)
      shift
      ;;
  esac
done

# Fetch the JSON data
if $USE_LOCAL; then
  echo "Using local kaomojis file"
  if [[ ! -f "$LOCAL_FILE" ]]; then
    echo "Error: Local file not found: $LOCAL_FILE" >&2
    exit 1
  fi
  DATA=$(cat "$LOCAL_FILE")
else
  DATA=$(curl -s "$KAOMOJI_URL")
fi
# Get unique moods for selection
MOODS=$(echo "$DATA" | jq -r '[.[].mood] | unique | .[]')

# Let user pick a mood
MOOD=$(echo "$MOODS" | gum choose --header "Pick a mood:")

# Exit if no mood selected
[ -z "$MOOD" ] && exit 0

# Get kaomojis for the selected mood
KAOMOJIS=$(echo "$DATA" | jq -r --arg mood "$MOOD" '.[] | select(.mood == $mood) | .kaomoji')

# Let user pick a kaomoji
CHOICE=$(echo "$KAOMOJIS" | gum choose --header "Pick a kaomoji:")

# Exit if no kaomoji selected
[ -z "$CHOICE" ] && exit 0

# Copy to clipboard and confirm
echo "$CHOICE" | pbcopy
echo "Copied to clipboard: $CHOICE"
