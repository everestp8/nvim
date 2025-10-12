return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
	config = function()
        -- local highlight = {
        --     "RainbowRed",
        --     "RainbowYellow",
        --     "RainbowBlue",
        --     "RainbowOrange",
        --     "RainbowGreen",
        --     "RainbowViolet",
        --     "RainbowCyan",
        -- }

        local scope_hl = {
            "IndentBlanklineScope",
            "IndentBlanklineScopePrimary"
        }

        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            -- vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            -- vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            -- vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            -- vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            -- vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            -- vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            -- vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
            vim.api.nvim_set_hl(0, "IndentBlanklineScope", { fg = "#FFFFFF", bg = "none" })
            vim.api.nvim_set_hl(0, "IndentBlanklineScopePrimary", { fg = "#FFFFFF", bg = "none" })
        end)

        require("ibl").setup({ scope = { highlight = scope_hl } })
	end,

}
