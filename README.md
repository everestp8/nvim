# Neovim Configuration

A ~~minimal~~ lean Neovim configuration designed for ~~productivity~~ fun and ease of use. Built to keep only the essential features I need for work.

## Features

- **Native Package Management**: Powered by Neovim 0.12's built-in `vim.pack` with reproducible locking (`nvim-pack-lock.json`).
- **Modern LSP Integration**: Configured via native `vim.lsp.config` / `vim.lsp.enable` with `nvim-lspconfig` and dedicated LSP keymaps.
- **Syntax & Highlighting**: **nvim-treesitter** with parsers for major programming languages and markup formats.
- **Autocompletion**: **nvim-cmp** with LuaSnip, LSP sources, path, buffer, and friendly-snippets.
- **Fuzzy Navigation**: **Telescope** for fast file search, live grep, and buffer navigation.
- **Code Navigation**: **Flash.nvim** for lightning-fast cursor jumps and search integration.
- **File Explorer**: **NvimTree** with a centered floating window interface.
- **Editing Helpers**: **nvim-autopairs** and **nvim-surround** for quick delimiter manipulation.
- **Git Integration**: **Gitsigns** for Git diff signs in the gutter.
- **Aesthetics & UI**:
  - Colorscheme: **Monokai Pro** (Spectrum filter)
  - **transparent.nvim** for seamless terminal transparency
  - Minimal **Lualine** status bar
  - **Indentation guides** via `indent-blankline.nvim` with custom scope highlighting
- **HTTP Client**: **hurl.nvim** for running `.hurl` requests directly inside the editor (`<leader>rr`).
- **Language-Specific Tooling**:
  - **Java & Spring Boot**: Full Java IDE workflow with **nvim-java**, **spring-boot.nvim**, and **nvim-dap**.
  - **LaTeX**: **Vimtex** configured with LuaLaTeX, Zathura PDF viewer, custom output directory (`dist`), and auto-cleanup.

## Requirements

- **Neovim** >= 0.12
- Git
- C compiler (e.g. `gcc` or `clang` for Treesitter parsers)
- `ripgrep` and `fd` (for Telescope)
- Node.js & npm (for web LSPs and language servers)

## Installation

1. Clone this repository into your Neovim configuration directory:
   ```sh
   git clone https://github.com/everestp8/nvim ~/.config/nvim
   ```

2. Install LSP servers on Arch (pls adapt the script if you want to use in another distros):
   ```sh
   ./install_lsps.sh
   ```

3. Launch Neovim:
   ```sh
   nvim
   ```
   Plugins are managed and loaded automatically upon startup via `vim.pack`.

