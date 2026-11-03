vim.pack.add({
    'https://github.com/nvim-tree/nvim-tree.lua'
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
    view = {
        float = {
            enable = true,
            open_win_config = function()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * 0.7
                local window_h = screen_h * 0.7
                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
                return {
                    border = "rounded",
                    relative = "editor",
                    row = center_y,
                    col = center_x,
                    width = math.floor(window_w),
                    height = math.floor(window_h),
                }
            end,
        },
    },
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.map.on_attach.default(bufnr)

        vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
        vim.keymap.set('n', 'H', api.tree.collapse_all, opts('Collapse All'))
        vim.keymap.del('n', '<Return>', opts(''))
        vim.keymap.del('n', '<Tab>', opts(''))
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

