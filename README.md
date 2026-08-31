# Tesla Noir

A graphite, champagne, and warm-metal Omarchy theme built around a Cybercab
showroom wallpaper. Low-glare cabin surfaces, warm metallic focus, and a
side-profile screensaver that paints the car in the terminal.

Unofficial fan theme. Not affiliated with Tesla, Inc.

## Cabin extras

- **Screensaver** — braille Cybercab side profile in
  `branding/screensaver.txt`. Idle uses Omarchy's `ttfx` animation
  (`omarchy-launch-screensaver force` to preview). A theme-set hook copies
  this art on while Tesla Noir is active and restores the Omarchy logo
  when you leave.
- **Font** — `GeistMono Nerd Font`. Geometric cabin mono, closer to a
  vehicle display than iA Writer.
- **Lock / boot** — champagne silhouette `unlock.png` (Plymouth via
  `omarchy plymouth set-by-theme tesla-noir`).
- **Bar** — translucent HUD over the wallpaper; clock is `h:mm AP`.
- **Windows** — inactive dim, slide-in ease, slightly wider bezels.
- **Backgrounds** — dusk showroom, tight cabin crop, cooler night grade.
  Cycle with the Omarchy background switcher.

## Palette

| Token | Hex | Role |
|---|---|---|
| background | `#0D0D0C` | Graphite cabin |
| accent | `#D2A35F` | Champagne |
| warm metal | `#C88F4B` | Focus / shadow |
| foreground | `#E7E2D9` | Bone |

## Install

```bash
omarchy theme install https://github.com/howdycarter/omarchy-tesla-noir-theme
omarchy font set "GeistMono Nerd Font"
```
