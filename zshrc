export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

# --- Fedora --- #
alias orphans="sudo dnf autoremove -y"
alias pkglist="dnf repoquery --installed > Info/Pkglist && dnf repoquery --userinstalled > Info/Userlist"
alias update="sudo dnf upgrade --refresh -y"

# --- File manager --- #
alias bar="yazi .config/waybar"
alias cdt="cd ~/Téléchargements"
alias conf="yazi .config"
alias fm="yazi"
alias info="yazi Info"
alias rof="yazi .config/rofi"

# --- Papirus-folders --- #
alias pfl="~/.scripts/papirus-folders -l"
alias pfc="~/.scripts/papirus-folders -C"

# --- Système --- #
alias cache="dust .cache"
alias error="journalctl -p 3 -xb"
alias rm="trash -v"
alias zshrc="micro .zshrc"

# --- Utilitaires --- #
alias c="clear"
alias ff="fastfetch"

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
