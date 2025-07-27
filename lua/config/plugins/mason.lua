return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason = require("mason")
		local mason_lsp = require("mason-lspconfig")

		mason.setup()
		mason_lsp.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"lua_ls",
                "rust_analyzer",
                "emmet_language_server",
				"pyright",
				"clangd",
				"dockerls",
				"jdtls"
			},
			automatic_installation = true,
			automatic_enable = true
		})
	end
}

