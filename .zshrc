if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

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
# alias python='python3'
# alias py='python3'
# alias ls='ef'
alias ef='exa --tree --level=1'
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
alias maestro='cd ~/Desktop/maestro/maestro/'
alias home='nmcli con up id Pacmanoii-2.4Ghz --ask'
alias hcf='nv /home/daniel/.config/hypr/hyprland.conf'
## git aliases ##
alias gac='git add . && git commit'
alias gaction='cd .github/workflows/'
alias gpom='git push origin main'
alias guci='gac; git push origin :refs/tags/refs/heads/main; gpom'
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

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:/home/daniel/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/nvim-linux64/bin

# xinput set-prop "ELAN2204:00 04F3:30F5 Touchpad" "libinput Tapping Enabled" 1
eval "$(starship init zsh)"
#~/.local/bin/please
#figlet daniel-arch | lolcat
if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi
