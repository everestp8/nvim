return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        modes = {
            char = {
                jump_labels = true,
                multi_line = false,
                highlight = { backdrop = false },
            },
            search = {
                enabled = true,
            },
            jump = {
                autojump = true,
            }
        },
    },
    keys = {
        { "<leader>ss", mode = { "n", "x", "o", "v" }, function() require("flash").jump() end,              desc = "Flash" },
        { "<leader>S",  mode = { "n", "x", "o" },      function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { "<leader>r",  mode = "o",                    function() require("flash").remote() end,            desc = "Remote Flash" },
        { "<leader>R",  mode = { "o", "x" },           function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    },
    config = function(_, opts)
        require("flash").setup(opts)
        vim.api.nvim_set_hl(0, 'FlashLabel', { foreground = '#ffffff', background = '#ff00ff' })
    end,
}
