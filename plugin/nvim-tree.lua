vim.pack.add({
    'https://github.com/nvim-tree/nvim-tree.lua'
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.map.on_attach.default(bufnr)

        vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
        vim.keymap.set('n', 'H', api.tree.collapse_all, opts('Collapse All'))
    end,
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "H",
            info = "I",
            warning = "W",
            error = "E",
        },
    },
    renderer = {
        icons = {
            web_devicons = {
                file = { enable = false },
                folder = { enable = false },
            },
            glyphs = {
                default = "",
                git = {
                    unstaged = "M",
                    staged = "S",
                    unmerged = "U",
                    renamed = "R",
                    untracked = "?",
                    deleted = "D",
                    ignored = "I",
                }
            }
        }
    }
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>")
