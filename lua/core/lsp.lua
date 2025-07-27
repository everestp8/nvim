local keymaps = require('config.lsp_keymaps')

local function on_attach(_, bufnr)
	keymaps.set_lsp_keymaps(bufnr)
end

local cmplsp = require("cmp_nvim_lsp")
local cap = cmplsp.default_capabilities()

vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        source = true,
    },
})

vim.lsp.config('*', {
    capabilities = cap,
    on_attach = on_attach
})

-- TODO: Dar enable(vim.lsp) e ensure_install(mason) automaticamente em todos os servidores configurados na pasta lsp/
vim.lsp.enable({
    "lua_ls",
    "rust_analyzer",
    "pyright"
})

