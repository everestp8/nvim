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

vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("treesitter_auto_start", { clear = true }),
    callback = function(args)
        local bufnr = args.buf
        local ft = vim.bo[bufnr].filetype

        local lang = vim.treesitter.language.get_lang(ft) or ft

        pcall(vim.treesitter.start, bufnr, lang)
    end,
})

