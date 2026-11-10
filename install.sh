#!/usr/bin/env bash
# Link these dotfiles into place with GNU Stow.
#   ./install.sh            link everything
#   ./install.sh --dry-run  show what would happen, change nothing
#   ./install.sh --brew     also install packages from the Brewfile first
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
SIMULATE=""
BREW=0
for arg in "$@"; do
  case "$arg" in
    --dry-run) SIMULATE="-n" ;;
    --brew)    BREW=1 ;;
    *) echo "unknown option: $arg" >&2; exit 1 ;;
  esac
done

if ! command -v brew >/dev/null; then
  echo "Install Homebrew first: https://brew.sh" >&2; exit 1
fi

if [ "$BREW" = 1 ] && [ -z "$SIMULATE" ]; then
  brew trust asmvik/formulae 2>/dev/null || true   # needed for skhd
  brew bundle --file="$DOTFILES/Brewfile"
fi

command -v stow >/dev/null || brew install stow

mkdir -p "$HOME/.config" "$HOME/.local/state"/{python,psql,mysql,node,neomutt,msmtp,isync} \
         "$HOME/.local/share/mail" "$HOME/.cache/neomutt"/{headers,bodies,tmp}

# config/    -> ~/.config   (files linked one by one; app-written files stay out of git)
# home/      -> ~           (only ~/.zshenv)
# karabiner/ -> ~/.config   (whole folder linked; Karabiner breaks if karabiner.json is a link)
stow $SIMULATE -v --no-folding -d "$DOTFILES" -t "$HOME/.config" config
stow $SIMULATE -v --no-folding -d "$DOTFILES" -t "$HOME" home
stow $SIMULATE -v              -d "$DOTFILES" -t "$HOME/.config" karabiner

# Warp only reads ~/.warp
if [ -z "$SIMULATE" ] && [ ! -e "$HOME/.warp" ]; then
  ln -s "$HOME/.config/.warp" "$HOME/.warp"
fi

# Enable the gitleaks pre-commit hook for this repo
git -C "$DOTFILES" config core.hooksPath .githooks

echo "Done. Open a new terminal. In tmux press prefix + I to install plugins."
