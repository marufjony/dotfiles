# dotfiles

Personal macOS config, linked into place with GNU Stow.

| Folder | Linked into | Contents |
|---|---|---|
| `config/` | `~/.config` | zsh, git, tmux, nvim, ghostty, wezterm, kitty, warp, herdr, starship, btop, gh, scripts, mail (neomutt, aerc, mbsync, msmtp, notmuch) |
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

## Mail

`neomutt` or `aerc` (shell functions in `.zshrc`) unlock `pass`, sync, then open.
Mail lives in `~/.local/share/mail/<name>/`, never in git. Gmail's "All Mail"
(Archive) and Spam are not synced; archiving removes mail from the Inbox and
Gmail keeps it in All Mail.

| File | Job |
|---|---|
| `config/isyncrc` | mbsync: download mail (IMAP to Maildir) |
| `config/msmtp/config` | msmtp: send mail (SMTP) |
| `config/notmuch/default/config` | search index, unified inbox |
| `config/neomutt/` | neomutt: `neomuttrc`, `accounts/<name>.muttrc`, `mailcap` |
| `config/aerc/` | aerc: `aerc.conf`, `binds.conf`, `accounts.conf` |
| `config/mail/` | shared scripts: `mailsync`, attachment viewers |

Passwords: `pass show Email/app/<address>` is called by mbsync (`PassCmd`) and msmtp
(`passwordeval`). Nothing is stored in these files.

### Add an account

Pick a short `<name>` (e.g. `work`) and use it everywhere below.

1. **Password.** Gmail / Google Workspace: create an App Password
   (myaccount.google.com > Security > App passwords). Other providers: an app
   password or your mail password. Then: `pass insert Email/app/<address>`
2. **Download (`config/isyncrc`).** Copy the whole `marufcorp` block, rename
   every `marufcorp` to `<name>` and change `User`/`PassCmd`.
   Not Gmail: set `Host` to the provider's IMAP server, then run
   `mbsync -l <name>-inbox` to list its real folder names and use those
   (often `Sent`, `Drafts`, `Trash`, `Junk`, `Archive`) in the `Far` lines.
   Add the new channels to a `Group <name>`.
3. **Send (`config/msmtp/config`).** Copy the `account marufcorp` block,
   rename it, change `from`/`user`/`passwordeval`. Not Gmail: set `host`
   (and `port 465` + `tls_starttls off` if the provider uses SSL on 465).
4. **neomutt.** `cp config/neomutt/accounts/marufcorp.muttrc config/neomutt/accounts/<name>.muttrc`,
   replace `marufcorp`. Not Gmail: replace `unset record` with
   `set record = "+<name>/Sent"`. In `neomuttrc`, copy the `<F1>` macro line
   as `<F2>` pointing at the new file.
5. **aerc (`config/aerc/accounts.conf`).** Copy the `[marufcorp]` block, rename it.
   Not Gmail: add `copy-to = Sent`.
6. **Link and sync.**
   `stow --no-folding -t ~/.config config && ~/.config/mail/mailsync <name>`
7. **Commit** (gitleaks checks for secrets).

The unified inbox, search and address completion pick the new account up
automatically.
