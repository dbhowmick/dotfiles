# Dotfiles

Personal dotfiles managed with GNU Stow.

## Prerequisites

**Required:**
- GNU Stow
- Git
- Zsh
- Tmux
- Neovim (0.11+)
- fzf
- ripgrep
- C compiler (gcc or clang)

**Optional:**
- Oh My Zsh
- ASDF (version manager)

## Installation

```bash
git clone <repo> ~/dotfiles
cd ~/dotfiles
stow .
```

## Post-Installation

- **Oh My Zsh**: Install if not already present
- **Tmux**: Run `Ctrl-a + I` to install TPM plugins (TPM auto-bootstraps on first run)
- **Neovim**: Open nvim and plugins will auto-install via lazy.nvim

## What's Included

- `.zshrc` - Zsh config with Oh My Zsh
- `.tmux.conf` - Tmux config with Catppuccin theme
- `.config/nvim/` - Neovim config with lazy.nvim
