# Author: Maruf Jony <maruf@codersgarage.com>
# Source: http://github.com/marufjony/dotfiles

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
export PATH="/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#aliases
alias ls='eza --icons --grid --group-directories-first'
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
#alias tmux='~/.config/scripts/tmux_with_capslock.sh'
alias obsc='~/.config/scripts/obsc.sh'
alias oo='cd /Users/marufjony/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Ideaverse'
alias brewcare='brew update && brew upgrade && brew cleanup -s && brew autoremove && brew doctor'
alias maccare='mo clean && mo optimize && mo analyze && mo status'
alias pdfup='colima status | grep -q Running || colima start; \
  until docker info >/dev/null 2>&1; do sleep 1; done; \
  docker compose -f ~/stirling-pdf/docker-compose.yml up -d && \
  until curl -sf http://localhost:8080 >/dev/null; do sleep 1; done; \
  open http://localhost:8080'
alias pdfdown='docker stop stirling-pdf; \
  if [ -z "$(docker ps -q)" ]; then colima stop && echo "Nothing else running — Colima stopped, RAM freed"; \
  else echo "Other containers active — Colima left running"; fi'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"




export PATH="/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Created by `pipx` on 2024-06-07 16:44:06
export PATH="$PATH:/Users/marufjony/.local/bin"
export NNN_OPENER=nuke
export NNN_FCOLORS='0000E6310000000000000000'
export NNN_PLUG='p:preview-tui;f:finder;'
export NNN_FIFO=/tmp/nnn.fifo
export JAVA_HOME=$(brew --prefix openjdk)/libexec/openjdk.jdk/Contents/Home

nerdfetch
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export NVM_DIR="$HOME/.config/.nvm"
export GPG_TTY=$(tty)
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


# bun completions
[ -s "/Users/marufjony/.bun/_bun" ] && source "/Users/marufjony/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Keep tool histories and caches out of ~ (XDG)
export XDG_STATE_HOME="$HOME/.local/state"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PSQL_HISTORY="$XDG_STATE_HOME/psql/history"
export MYSQL_HISTFILE="$XDG_STATE_HOME/mysql/history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/repl_history"
export npm_config_cache="$HOME/.cache/npm"
