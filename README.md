# Neovim Configuration

A minimal and modular Neovim configuration designed for productivity and easy customization.

## ✨ Features
- **Lazy.nvim** for package management
- Editor options and general keymappings
- Dedicated **LSP keymaps** for enhanced workflow
- Colorscheme: *Monokai Pro*
- **Indentation guides** with blanklines
- **Git signs** in the gutter
- **File tree* with NvimTree 
- **Autocompletion** (LSP, LuaSnip, path, etc.)
- **Autopairs**
- **Telescope** for fuzzy navigation
- **Flash.nvim** for code navigation
- **Harpoon** for buffer organization
- HTTP requests with **Kulala.nvim**
- Minimal **Lualine** status bar
- **Vimtex** for LaTeX document writing

## 🔧 LSP Servers
Configured language servers:
- **Lua**
- **HTML, CSS, JavaScript/TypeScript**
- **Go**
- **Rust**
- **C**
- **Python**

## 🚀 Installation
Clone this repository into your Neovim config folder:
```sh
git clone https://github.com/everestp8/nvim ~/.config/nvim
```

To install LSP servers, run:
```sh
./install_lsps.sh
```

Then open Neovim and run:

```sh
:Lazy sync
```

## 🙏 Special thanks 

> Inspired by @adibhanna and @josean-dev configurations

