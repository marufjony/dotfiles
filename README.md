# Dotfiles

This repository contains my personal configuration files (dotfiles) for various tools and environments. I manage these dotfiles using [GNU Stow](https://www.gnu.org/software/stow/), which simplifies the process of symlinking them to their respective locations.

## Structure

The dotfiles are organized by application, with each directory containing the relevant configuration files for that tool. The primary tools included are:

- **Alacritty**: Configuration for the [Alacritty terminal emulator](https://github.com/alacritty/alacritty).
- **zsh/.zshrc**: Custom settings and aliases for the [Zsh shell](https://www.zsh.org/).
- **Neovim**: My configuration for [Neovim](https://neovim.io/), including plugin management and key mappings.
- **WezTerm**: Configuration for the [WezTerm terminal emulator](https://wezfurlong.org/wezterm/).

## Installation

### Prerequisites

1. Install [GNU Stow](https://www.gnu.org/software/stow/).
2. Clone this repository to your home directory or any preferred location:

    ```sh
    git clone https://github.com/yourusername/dotfiles.git
    cd dotfiles

### Stow Setup
To create symlinks for the configuration files, use GNU Stow:
Navigate to the dotfiles directory.
Run the following command to stow a specific application's configuration:

```sh
    stow <application>

For example, to set up Neovim, use:

```sh
    stow nvim

This will symlink the nvim configuration files to the appropriate location in your home directory.



