# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository managed with GNU Stow. It contains configuration files for zsh, tmux, and Neovim.

## Deployment

Deploy dotfiles to home directory using GNU Stow:
```bash
cd ~/dotfiles
stow .
```

The `.stow-local-ignore` file excludes version control directories, README, LICENSE, and Claude-related files from being symlinked.

## Structure

- `.zshrc` - Zsh configuration with Oh My Zsh (theme: cloud, plugin: git)
- `.tmux.conf` - Tmux configuration with TPM plugins (Catppuccin theme, battery, online status)
- `.config/nvim/` - Neovim configuration using lazy.nvim

## Neovim Configuration

Uses lazy.nvim plugin manager. Entry point: `.config/nvim/init.lua` loads `.config/nvim/lua/config/lazy.lua`

**Config modules** (`.config/nvim/lua/config/`):
- `lazy.lua` - Plugin manager bootstrap and setup
- `options.lua` - Editor settings (2-space tabs, relative line numbers, ripgrep for grep)
- `keymaps.lua` - Custom keybindings (window navigation with Ctrl+hjkl, buffer nav with leader+bp/bn)
- `globals.lua` - Global variables
- `autocmds.lua` - Autocommands

**Plugins** (`.config/nvim/lua/plugins/`):
- `fzf-lua.lua` - Fuzzy finder (leader+ff files, leader+fg grep, leader+fb buffers)
- `nvim-lspconfig.lua` - LSP with Mason
- `oil.lua` - File explorer
- `mini-nvim.lua` - Mini.nvim collection
- `nvim-treesitter.lua` - Syntax highlighting
- `theme.lua` - Colorscheme
- `lualine.lua` - Status line
- `which-key.lua` - Keybinding hints

## Tmux Configuration

Prefix key: `Ctrl-a` (not default Ctrl-b)

Key bindings:
- `Ctrl-a + Ctrl-hjkl` - Pane navigation
- `` Ctrl-a + ` `` - Renumber windows
- `Ctrl-a + c/"/%` - New window/split (preserves current path)

Uses TPM for plugins. Plugins auto-install on first run.
