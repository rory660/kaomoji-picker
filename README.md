# kaomoji-picker

A lightweight command-line tool for quickly selecting and copying kaomoji to your clipboard.

## Features

- Interactive terminal UI for browsing kaomojis
- Instant clipboard copying
- Fetches kaomoji data from remote source

## Prerequisites

- [gum](https://github.com/charmbracelet/gum) - Terminal UI toolkit
- [jq](https://jqlang.github.io/jq/) - JSON processor
- curl
- macOS (uses `pbcopy` for clipboard)

### Installing dependencies (macOS)

```bash
brew install gum jq curl
```

## Usage

```bash
./kaomoji.sh
```

Select a kaomoji from the interactive menu and it will be copied to your clipboard.