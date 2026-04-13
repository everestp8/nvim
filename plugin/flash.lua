vim.pack.add({
    'https://github.com/folke/flash.nvim'
})

require("flash").setup({
    modes = {
        char = {
            enabled = false,
        },
        search = {
            enabled = true,
        },
        jump = {
            autojump = true,
        }
    },
})

vim.api.nvim_set_hl(0, 'FlashLabel', { foreground = '#ffffff', background = '#ff00ff' })

