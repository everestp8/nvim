return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
	config = function()
        local scope_hl = {
            "IndentBlanklineScope",
            "IndentBlanklineScopePrimary"
        }

        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "IndentBlanklineScope", { fg = "#FFFFFF", bg = "none" })
            vim.api.nvim_set_hl(0, "IndentBlanklineScopePrimary", { fg = "#FFFFFF", bg = "none" })
        end)

        require("ibl").setup({ scope = { highlight = scope_hl } })
	end,

}
