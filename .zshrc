#####  ALIASSES #####
alias q='exit'
alias up='sudo pacman -Syuu'
alias rbt='reboot'
alias off='sudo systemctl poweroff -i'
alias sus='sudo systemctl suspend'
alias spi='sudo pacman -S'
alias zcnf='source ~/.zshrc'
alias zcfg='nv ~/.zshrc' 
alias kcfg='nv ~/.config/kitty/kitty.conf'
alias kcnf='source ~/.config/kitty/kitty.conf'
alias c='clear && pls'
alias nv='nvim'
alias sconfig='nv ~/.config/starship.toml'
alias dwmcfg='nv ~/.suckless/dwm/config.h'
alias dwmf='cd ~/.suckless/dwm'
alias dwmres='cd ~/.suckless/dwm && make && sudo make install'
alias smki='sudo make clean install'
alias pls='~/.local/bin/please'
alias py=$(pyenv which python)
alias ll='eza --tree --level=1'
alias f='dolphin .'
alias gi='cd ~/.wine/drive_c/Program\ Files/Genshin\ Impact/Genshin\ Impact\ game'
alias nvf='nv ~/.config/nvim'
alias tv='teamviewer daemon start && teamviewer'
alias lol='gamemoderun leagueoflegends start'
alias lolstop='leagueoflegends kill'
alias hw='cd ~/Documents/HW/ip-reserve/'
alias winpy='wine ~/.wine/drive_c/users/daniel/AppData/Local/Programs/Python/Python39/Scripts/pyinstaller.exe'
alias ss="scrot ~/Pictures/Screenshots/%b_%d_%H%M%S.png -s -e 'xclip -selection clipboard -t image/png -i $f'"
alias spwit='cd ~/Desktop/spwit/app.spwit.app'
alias ds='cd ~/Desktop'
alias maestro='cd ~/maestro/'
alias landing='cd ~/Desktop/maestro/landingpage_maestro/'
alias home='nmcli con up id Pacmanoii-2.4Ghz --ask'
alias hcf='nv /home/daniel/.config/hypr/hyprland.conf'
alias cd='z'
## git aliases ##
alias gs='git status'
alias gac='git add . && git commit'
alias gaction='cd .github/workflows/'
alias gpom='git push origin main'
alias guci='gac; git push origin :refs/tags/refs/heads/main; gpom'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
## compositor alias ##
alias compstop='qdbus org.kde.KWin /Compositor suspend'
alias compres='qdbus org.kde.KWin /Compositor resume'
## panic button ##
alias steamstop='killall -9 steam'

## custom functions ## 
mkcdir(){
	mkdir -p -- "$1" && cd -P -- "$1"
}

pt(){
  wget "$1" -O /home/daniel/.suckless/patches/"$2"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/daniel/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/nvim-linux64/bin

# xinput set-prop "ELAN2204:00 04F3:30F5 Touchpad" "libinput Tapping Enabled" 1
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
#~/.local/bin/please
#figlet daniel-arch | lolcat
if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi

alias claude="/home/daniel/.claude/local/claude"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
