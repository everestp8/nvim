vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = 'main' }
})

require('nvim-treesitter').install {
    "json",
    "html",
    "css",
    "javascript",
    "typescript",
    "bash",
    "lua",
    "vim",
    "dockerfile",
}

