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
	end,
}
