export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

# --- Fedora --- #
alias add="sudo dnf install"
alias info="rpm -qi"
alias list="dnf repoquery --installed > $HOME/Documents/list"
alias orphans="sudo dnf autoremove"
alias remove="sudo dnf remove"
alias search="dnf search"
alias update="sudo dnf upgrade --refresh -y"

# --- Fichiers --- #
alias bar="yazi .config/waybar"
alias cdt="cd ~/Téléchargements"
alias conf="yazi .config"
alias fm="yazi"
alias info="yazi Info"
alias rof="yazi .config/rofi"

# --- Système --- #
alias cache="dust .cache"
alias error="journalctl -p 3 -xb"
alias firmwares="fwupdmgr --force refresh && fwupdmgr get-updates"
alias rm="trash -v"
alias update-grub="sudo grub2-mkconfig -o /etc/grub2.cfg"
alias zshrc="micro .zshrc && source ~/.zshrc"

# --- Utilitaires --- #
alias c="clear"
alias ff="fastfetch"
alias ls="eza"
alias pfl="~/.scripts/papirus-folders -l"
alias pfc="~/.scripts/papirus-folders -C"
alias wipe="cliphist wipe && rm -r ~/.cache/cliphist/db"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

bindkey -e
bindkey '^[[3~' delete-char

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
