return  {
    'nvim-lualine/lualine.nvim',
	config = function()
        local auto_theme_custom = require('lualine.themes.auto')
        auto_theme_custom.normal.c.bg = 'none'

		require("lualine").setup({
            options = {
                theme = auto_theme_custom,
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                globalstatus = true,
                icons_enabled = false,
                transparent = true
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'branch', { 'filename', path=1 }, 'diff' },
                lualine_x = { 'diagnostics', 'filetype', 'progress', 'location' },
                lualine_y = {},
                lualine_z = {},
            },
        })
	end,
}
