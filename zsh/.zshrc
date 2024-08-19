# Author: Maruf Jony <maruf@codersgarage.com>
# Source: http://github.com/marufjony/dotfiles

export PATH="/opt/homebrew/anaconda3/bin:$PATH"
#Global options
export SHELL_SESSION_HISTORY=0
export HISTFILESIZE=999999
export HISTSIZE=999999
export HISTCONTROL=ignoredups:ignorespace


# Enable prompt substitution
setopt prompt_subst

# Case-insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Initialize Starship prompt


export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export TERM="xterm-256color"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#aliases
alias ls='ls -G'
alias ll='ls -ltrG'
alias lat='eza -l --tree --level=2 --icons --git -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias less='less -R'
alias fnd='open -a Finder'
alias fzf='fzf --preview="bat --color=always {}"'
alias wt='webtorrent'
alias python='python3'
alias pip='pip3'
alias vim='nvim'
alias oo='cd /Users/marufjony/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Ideaverse'




test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"




export PATH="/opt/homebrew/bin:$PATH"
#source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
source <(fzf --zsh)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Created by `pipx` on 2024-06-07 16:44:06
export PATH="$PATH:/Users/marufjony/.local/bin"
export NNN_OPENER=nuke
export NNN_FCOLORS='0000E6310000000000000000'
export NNN_PLUG='p:preview-tui;f:finder;'
export NNN_FIFO=/tmp/nnn.fifo
