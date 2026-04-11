return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
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
    },
    config = function(_, opts)
        require("flash").setup(opts)
        vim.api.nvim_set_hl(0, 'FlashLabel', { foreground = '#ffffff', background = '#ff00ff' })
    end,
}
