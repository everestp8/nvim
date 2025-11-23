return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
            "Pmenu", "PmenuSel", "PmenuThumb", "PmenuSbar",
            "CmpItemAbbr", "CmpItemAbbrMatch", "CmpItemKind", "CmpItemMenu",
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
        })
        require('transparent').clear_prefix('NeoTree')
        require('transparent').clear_prefix('Telescope')
        require('transparent').clear_prefix('BufferLine')
        require('transparent').clear_prefix('lualine')

        -- transparency for hover windows and markdown code blocks
        vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
        vim.api.nvim_set_hl(0, 'NormalFloatLine', { link = 'Normal' })
        vim.api.nvim_set_hl(0, "@markup.raw.block.markdown", { bg = "NONE" })

        -- rounded borders for floating windows
        vim.o.winborder = 'rounded'
        vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#222222", bg = "NONE" })
	end,
}
