# i3 Cheat Sheet

`$mod` = Super (Windows key)

## Core

| Keybinding | Action |
|---|---|
| `$mod+Return` | Open terminal (kitty) |
| `$mod+q` | Kill focused window |
| `$mod+d` | App launcher (rofi) |
| `$mod+Tab` | Window switcher (rofi) |
| `$mod+c` | Clipboard history (copyq) |
| `$mod+p` / `Print` | Screenshot (flameshot) |
| `F1` | Keybinding cheat sheet popup |
| `$mod+Shift+p` | Power profile switcher |

## Focus

| Keybinding | Action |
|---|---|
| `$mod+h/j/k/l` | Focus left/down/up/right |
| `$mod+Arrow keys` | Focus left/down/up/right |
| `$mod+a` | Focus parent container |
| `$mod+space` | Toggle focus tiled/floating |

## Move Windows

| Keybinding | Action |
|---|---|
| `$mod+Shift+h/j/k/l` | Move window left/down/up/right |
| `$mod+Shift+Arrow keys` | Move window left/down/up/right |
| Hold `$mod` + drag | Move floating window with mouse |

## Layout

| Keybinding | Action |
|---|---|
| `$mod+b` | Split horizontal |
| `$mod+v` | Split vertical |
| `$mod+s` | Stacking layout |
| `$mod+w` | Tabbed layout |
| `$mod+e` | Toggle split layout |
| `$mod+f` | Fullscreen toggle |
| `$mod+Shift+space` | Toggle floating |

## Workspaces

| Keybinding | Action |
|---|---|
| `$mod+1-9,0` | Switch to workspace 1-10 |
| `$mod+Shift+1-9,0` | Move window to workspace 1-10 |

## Scratchpad

| Keybinding | Action |
|---|---|
| `$mod+Shift+minus` | Move window to scratchpad |
| `$mod+minus` | Show/hide scratchpad |

## Resize Mode

| Keybinding | Action |
|---|---|
| `$mod+r` | Enter resize mode |
| `h/j/k/l` or `Arrow keys` | Resize window (in resize mode) |
| `Escape` or `Return` | Exit resize mode |

## Session

| Keybinding | Action |
|---|---|
| `$mod+Shift+c` | Reload config |
| `$mod+Shift+r` | Restart i3 |
| `$mod+Shift+e` | Power menu (logout/reboot/shutdown) |
| `$mod+Shift+x` | Lock screen (i3lock-fancy) |

## Media / Hardware Keys

| Key | Action |
|---|---|
| `Volume Up/Down` | Adjust volume 5% (+notification) |
| `$mod+Volume Up/Down` | Fine volume 1% (+notification) |
| `Mute` | Toggle mute (+notification) |
| `Brightness Up/Down` | Adjust brightness (+notification) |
| `Play/Pause` | Toggle media playback |
| `Next/Prev` | Next/previous track |

## i3blocks (Status Bar) Click Actions

| Block | Left Click | Right Click | Scroll |
|---|---|---|---|
| Disk | Open `/` in nemo | Open `~` in nemo | - |
| CPU | Open btop | - | - |
| Memory | Open btop | - | - |
| Network | Open nm-connection-editor | - | - |
| Keyboard | Switch layout | - | - |
| Volume | Toggle mute | Open pavucontrol | Adjust volume |
| Brightness | - | - | Adjust brightness |
| Date/Time | Calendar popup | - | - |

## Tips

- **Autotiling** is enabled: windows automatically split based on dimensions (spiral layout)
- **Floating windows stuck behind?** Press `$mod+space` to toggle focus to floating layer
- **Multi-monitor:** Use `arandr` for GUI display configuration
