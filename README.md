# dotfiles

Personal dotfiles for Arch Linux / Hyprland setup, managed with a bare git repo.

## Setup

```bash
git clone --bare git@github.com:danielshamsudin/dotfiles.git ~/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## Tracked configs

| File | Description |
|------|-------------|
| `.zshrc` | Zsh config and aliases |
| `.bashrc` | Bash config |
| `.tmux.conf` | Tmux config |
| `.config/hypr/` | Hyprland compositor |
| `.config/waybar/` | Waybar status bar |
| `.config/kitty/` | Kitty terminal |
| `.config/rofi/` | Rofi launcher |
| `.config/nvim/` | Neovim (kickstart-based) |
| `.config/starship.toml` | Starship prompt |

## Changelog

| Date | File | Reason |
|------|------|--------|
| 2026-06-13 | `.config/hypr/hyprland.conf` (line 106) | Removed `pseudotile` from dwindle block — option dropped in newer Hyprland versions |
