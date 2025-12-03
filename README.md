# kaomoji-picker

A lightweight command-line tool for quickly selecting and copying kaomoji to your clipboard, organized by mood.

## Features

- 100 kaomojis organized by mood
- Two-stage selection: pick a mood, then pick a kaomoji
- Interactive terminal UI powered by gum
- Instant clipboard copying
- Fetches kaomoji data from remote source (or local with `-l` flag)

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
./kaomoji.sh           # fetch from GitHub
./kaomoji.sh -l        # use local kaomojis.json
./kaomoji.sh --local   # use local kaomojis.json
```

First, select a mood:

```
$ ./kaomoji.sh
Pick a mood:
> happy
  sad
  angry
  love
  surprised
  confused
  cool
  silly
  excited
  neutral
```

Then select a kaomoji from that mood:

```
Pick a kaomoji:
> (◕‿◕)
  (｡◕‿◕｡)
  (ᵔ◡ᵔ)
  (≧◡≦)
  (•‿•)
  ヽ(´▽`)/
  (＾▽＾)
  (◠‿◠)
  (☆▽☆)
  (✿◠‿◠)
```

The selected kaomoji is copied to your clipboard.

## Available Moods

| Mood | Count | Examples |
|------|-------|----------|
| happy | 10 | `(◕‿◕)` `(≧◡≦)` `ヽ(´▽`)/` |
| sad | 10 | `(ಥ﹏ಥ)` `(╥_╥)` `(T_T)` |
| angry | 10 | `(╯°□°）╯︵ ┻━┻` `ಠ_ಠ` `(ง'̀-'́)ง` |
| love | 10 | `(づ｡◕‿‿◕｡)づ` `(♡°▽°♡)` `(｡♥‿♥｡)` |
| surprised | 10 | `(⊙_⊙)` `(°ロ°)` `Σ(°△°|||)` |
| confused | 10 | `¯\_(ツ)_/¯` `(・・?)` `ლ(ಠ_ಠლ)` |
| cool | 10 | `(⌐■_■)` `( ͡° ͜ʖ ͡°)` `ᕕ( ᐛ )ᕗ` |
| silly | 10 | `ʕ•ᴥ•ʔ` `(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧` `(~˘▾˘)~` |
| excited | 10 | `\(★ω★)/` `٩(◕‿◕｡)۶` `(∩^o^)⊃━☆` |
| neutral | 10 | `(´･ω･`)` `(￣ω￣)` `(-_-) zzZ` |

## Adding Kaomojis

Edit `kaomojis.json` to add more entries:

```json
[
  {"kaomoji": "(◕‿◕)", "mood": "happy"},
  {"kaomoji": "(ಥ﹏ಥ)", "mood": "sad"}
]
```
