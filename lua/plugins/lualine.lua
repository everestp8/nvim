return  {
    'nvim-lualine/lualine.nvim',
	config = function()
		require("lualine").setup({
            options = {
                theme = 'auto',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                globalstatus = true,
                icons_enabled = false,
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'branch', 'filename' },
                lualine_x = { 'diagnostics', 'filetype', 'progress', 'location' },
                lualine_y = {},
                lualine_z = {},
            },
        })
	end,
}
