local keymaps = require('config.lsp_keymaps')

local function on_attach(_, bufnr)
	keymaps.set_lsp_keymaps(bufnr)
end

local cmplsp = require("cmp_nvim_lsp")
local cap = cmplsp.default_capabilities()

-- TODO: Dar enable(vim.lsp) e ensure_install(mason) automaticamente em todos os servidores configurados na pasta lsp/
local servers = {
    "lua_ls",
    "rust_analyzer",
    "pyright",
    "gopls",
    "ts_ls",
    "html",
    "cssls",
    "emmet_language_server",
    "dartls"
}

vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        source = true,
    },
})

for _, serve_name in ipairs(servers) do
    vim.lsp.config(serve_name, {
        capabilities = cap,
        on_attach = on_attach
    })
end

vim.lsp.enable(servers)

