vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            renderers = {
                directory = {
                    { "indent" },
                    { "icon" },
                    { "current_filter" },
                    {
                        "container",
                        content = {
                            { "name",        zindex = 10 },
                            { "clipboard",   zindex = 10 },
                            { "diagnostics", errors_only = true, zindex = 20,     align = "right",          hide_when_expanded = true },
                            { "git_status",  zindex = 20,        align = "right", hide_when_expanded = true },
                        },
                    },
                },
                file = {
                    { "indent" },
                    {
                        "container",
                        content = {
                            { "name",        zindex = 10 },
                            { "clipboard",   zindex = 10 },
                            { "bufnr",       zindex = 10 },
                            { "modified",    zindex = 20, align = "right" },
                            { "diagnostics", zindex = 20, align = "right" },
                            { "git_status",  zindex = 20, align = "right" },
                        },
                    },
                },
            },

            enable_git_status = true,
            enable_diagnostics = true,
            use_popups_for_input = false,

            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = true,
                },
            },
            default_component_configs = {
                modified = {
                    symbol = "+",
                    highlight = "NeoTreeModified",

                },
                git_status = {
                    symbols = {
                        added     = "A",
                        modified  = "M",
                        deleted   = "",
                        renamed   = "",
                        untracked = "U",
                        ignored   = "",
                        staged    = "",
                        unstaged  = "",
                        conflict  = "",
                    },
                },
            },

            window = {
                mappings = {
                    ["l"] = { "open", nowait = true },
                },
            },
        })

        vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
    end,
}

