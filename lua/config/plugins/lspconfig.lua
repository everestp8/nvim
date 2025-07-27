local keymaps = require('config.core.lsp_keymaps')

local function on_attach(_, bufnr)
	keymaps.set_lsp_keymaps(bufnr)
end

return {
	"hrsh7th/cmp-nvim-lsp",
	event = { "BufreadPre", "BufNewFile" },
	config = function()
		local cmplsp = require("cmp_nvim_lsp")

		vim.diagnostic.config({
			virtual_text = true,
		})

		local cap = cmplsp.default_capabilities()

		vim.lsp.config('*', {
			capabilities = cap,
			on_attach = on_attach
		})
	end
}

