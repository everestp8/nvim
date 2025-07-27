return {
    {
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                surrounds = {
                    ["("] = {
                        add = { { "(" }, { ")" } },
                    }
                }
            })
        end,
    },
}

