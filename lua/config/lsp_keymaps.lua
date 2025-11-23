local M = {}

-- set lsp keymaps
function M.set_lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	local keymap = vim.keymap

	keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
	keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
	keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- go to implementation
	keymap.set("n", "gr", vim.lsp.buf.references, opts) -- list references
	keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- show code actions
	keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- rename symbol
	keymap.set("n", "gy", vim.lsp.buf.signature_help, opts) -- show function signature help
    keymap.set("n", "<leader>f", vim.lsp.buf.format, opts) -- format buffer
    keymap.set("n", "<leader>n", "]d", opts) -- go to next diagnostic
    keymap.set("n", "<leader>N", "[d", opts) -- go to previous diagnostic
end

return M

