# 🚀 My Dotfiles

Personal dotfiles configuration for Arch Linux with Hyprland window manager.

![GitHub last commit](https://img.shields.io/github/last-commit/DaniilNikolaev-uv/dotfiles?style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/DaniilNikolaev-uv/dotfiles?style=flat-square)
![OS](https://img.shields.io/badge/OS-Arch%20Linux-1793D1?style=flat-square&logo=arch-linux)

---

## 📋 TODO

### In Progress
- [ ] nvim
- [ ] install script
- [ ] test install script
- [ ] color-picker
- [ ] notifications

### Completed ✅
- [x] hyprlock
- [x] maybe swap hyprpanel
- [x] fastfetch
- [x] switch rofi to walker
- [x] wallpaper switch to walker
- [x] emoji picker (swap to walker)
- [x] redact a screenshot (like in omarchy)
- [x] screensaver
- [x] pacman-animation
- [x] color-picker

---

## 🎨 Funny Stuff (Maybe Add)

- [ ] webcamize

---

## 📁 Structure

```
.dotfiles/
├── .config/
│   ├── elephant/
│   │   └── providers/
│   │       └── desktopapplications.so
│   ├── fastfetch/
│   │   └── config.jsonc
│   ├── hypr/
│   │   ├── appearance.conf
│   │   ├── autostart.conf
│   │   ├── binds.conf
│   │   ├── env.conf
│   │   ├── hypridle.conf
│   │   ├── hyprland.conf
│   │   ├── hyprlock.conf
│   │   ├── input.conf
│   │   ├── monitors.conf
│   │   ├── permissions.conf
│   │   ├── programs.conf
│   │   ├── windows.conf
│   │   └── scripts/
│   │       ├── emoji-picker.sh
│   │       └── screenshot.sh
│   ├── kitty/
│   │   └── kitty.conf
│   ├── mako/
│   │   └── config
│   ├── nvim/
│   │   ├── init.lua
│   │   └── lua/
│   │       ├── autocmds.lua
│   │       ├── chadrc.lua
│   │       ├── mappings.lua
│   │       ├── options.lua
│   │       └── plugins/
│   │           └── init.lua
│   ├── omp/
│   │   └── catppucin.omp.json
│   ├── walker/
│   │   ├── config.toml
│   │   ├── wallpaper-launcher.sh
│   │   └── plugins/
│   │       └── wallpaper.json
│   └── waybar/
│       ├── config.jsonc
│       └── style.css
├── Pictures/
│   ├── Screenshots/
│   └── Wallpapers/
├── pkg/
│   └── pkglist.txt
├── install(beta).sh
└── README.md
```
