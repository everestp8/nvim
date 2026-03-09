# More LSP Configurations and their installation instructions on: 
# https://github.com/neovim/nvim-lspconfig/tree/master/lsp

sudo pacman -S --needed \
    lua-language-server \
    rust-analyzer \
    pyright \
    gopls \
    clang

sudo npm install -g \
    typescript \
    typescript-language-server \
    vscode-langservers-extracted \
    @olrtg/emmet-language-server

