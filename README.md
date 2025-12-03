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

```
$ bash ./kaomoji.sh               
Choose:                        
> ¯\_(ツ)_/¯                   
  (╯°□°）╯︵ ┻━┻               
  (づ｡◕‿‿◕｡)づ                 
  (ง'̀-'́)ง                      
  (ᵔ◡ᵔ)                        
  (•_•) ( •_•)>⌐■-■ (⌐■_■)     
  (ノಠ益ಠ)ノ彡┻━┻              
  (ಥ﹏ಥ)                       
  (☞ﾟヮﾟ)☞ ☜(ﾟヮﾟ☜)                
  ( ͡° ͜ʖ ͡°)                     
  (｡◕‿◕｡)                      
  (⊙_⊙)                        
  (°ロ°)                       
  (´• ω •`)                    
  (⌐■_■)                       
  ಠ_ಠ                          
  ʕ•ᴥ•ʔ                        
  (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧                 
  (≧◡≦)                        
  (╥_╥)                        
  (¬‿¬)                        
  (◕‿◕)                        
  ヽ(´▽`)/                     
  (´･ω･`)                      
  (￣ω￣)                      
  ( ･ω･)☞                      
  ┬─┬ノ( º _ ºノ)              
  ᕕ( ᐛ )ᕗ                      
  (•‿•)
```