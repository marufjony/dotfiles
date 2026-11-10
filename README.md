# dotfiles

Personal macOS config, linked into place with GNU Stow.

| Folder | Linked into | Contents |
|---|---|---|
| `config/` | `~/.config` | zsh, git, tmux, nvim, ghostty, wezterm, kitty, warp, herdr, starship, btop, gh, scripts |
| `home/` | `~` | `.zshenv` only (sets `ZDOTDIR=~/.config/zsh`) |
| `karabiner/` | `~/.config` | whole `karabiner/` folder |

## New Mac

```sh
git clone git@github.com:marufjony/dotfiles.git ~/Developer/dotfiles
cd ~/Developer/dotfiles
./install.sh --dry-run   # preview
./install.sh --brew      # install Brewfile packages, then link
```

Then: open a new terminal, press tmux prefix + `I` for plugins, run `nvm install 20 24`.

## Day to day

- Edit files in place (`~/.config/...`); they are links into this repo. Commit from here.
- New config: copy it into `config/` at the same path, then `stow --adopt --no-folding -t ~/.config config`.
- Update the Brewfile: `brew bundle dump --file=Brewfile --force`.
- A gitleaks pre-commit hook blocks secrets. Secrets live in `pass` and the macOS Keychain, never here.
- If an app replaces a link with a plain file, `git status` stops showing your edits; re-run `./install.sh`.
