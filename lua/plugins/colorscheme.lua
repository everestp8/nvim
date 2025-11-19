return {
	{
		lazy = true,
		"nickkadutskyi/jb.nvim",
        ft = "dart",
        -- config = function()
        --     require("jb").setup()
        --     vim.cmd.colorscheme("jb")
        -- end
	},
	{
		lazy = true,
		"sjl/badwolf",
	},
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("monokai-pro").setup({
				filter = "spectrum"
			})

			vim.cmd.colorscheme("monokai-pro")
		end,
	}
}

