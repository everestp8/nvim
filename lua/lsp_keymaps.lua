local M = {}

-- set lsp keymaps
function M.set_lsp_keymaps(bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    local keymap = vim.keymap

    local builtin = require('telescope.builtin')
    keymap.set('n', 'gd', builtin.lsp_definitions, opts)
    keymap.set('n', 'gi', builtin.lsp_implementations, opts)
    keymap.set('n', 'gr', builtin.lsp_references, opts)
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)          -- go to declaration
    keymap.set("n", "gy", vim.lsp.buf.signature_help, opts)       -- show function signature help
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)  -- show code actions
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)       -- rename symbol
    keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)       -- format buffer
    keymap.set("n", "<leader>O", vim.diagnostic.open_float, opts) -- open diagnostic
end

return M

