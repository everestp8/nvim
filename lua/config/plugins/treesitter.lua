return {
	"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
            modules = {},
            sync_install = false,
            ignore_install = {},

			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"json",
				"html",
				"css",
				"javascript",
				"typescript",
				"bash",
				"lua",
				"vim",
				"dockerfile",
			},
			auto_install = true,
		})
	end,
}

