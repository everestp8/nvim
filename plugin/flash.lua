vim.pack.add({
    'https://github.com/folke/flash.nvim'
})

require("flash").setup({
    prompt = {
        prefix = { { "//", "FlashPromptIcon" } },
    },
    modes = {
        char = {
            enabled = false,
        },
        search = {
            enabled = false,
        },
        jump = {
            autojump = true,
        }
    }
})

vim.keymap.set({ "n", "x", "o", "v" }, "<leader>s", function() require("flash").jump() end)

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, 'FlashLabel', { fg = '#ffffff', bg = '#ff00ff', bold = true })
    end,
})

