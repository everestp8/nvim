# Neovim Configuration

A minimal Neovim configuration designed for productivity and easy customization.

## ✨ Features
- Editor options and general keymappings
- Dedicated **LSP keymaps** for enhanced workflow
- Colorscheme: **Monokai Pro**
- **Indentation guides** with blanklines
- **Git signs** in the gutter
- **File tree** with NvimTree 
- **Autocompletion**  with nvim-cmp (LSP, LuaSnip, path, etc.)
- **Autopairs** and **Surround**
- **Telescope** for fuzzy navigation
- **Flash.nvim** for code navigation
- **Harpoon** for buffer organization
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

