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
        vim.cmd [[
            highlight GitAdded     guifg=#A6E22E
            highlight GitModified  guifg=#FD971F
            highlight GitDeleted   guifg=#F92672
            highlight GitRenamed   guifg=#66D9EF
            highlight GitUntracked guifg=#75715E
            highlight GitIgnored   guifg=#3E3D32
            highlight GitStaged    guifg=#A6E22E
            highlight GitUnstaged  guifg=#FD971F
            highlight GitConflict  guifg=#F92672
        ]]
        require("neo-tree").setup({
            enable_git_status = true,
            enable_diagnostics = true,

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
                        added     = "",
                        modified  = "~",
                        deleted   = "D",
                        renamed   = "R",
                        untracked = "?",
                        ignored   = "!",
                        staged    = "A",
                        unstaged  = "U",
                        conflict  = "x",
                    },
                    highlight = {
                        added     = "GitAdded",     -- verde
                        modified  = "GitModified",  -- laranja
                        deleted   = "GitDeleted",   -- vermelho
                        renamed   = "GitRenamed",   -- azul
                        untracked = "GitUntracked", -- cinza
                        ignored   = "GitIgnored",   -- cinza escuro
                        staged    = "GitStaged",    -- verde
                        unstaged  = "GitUnstaged",  -- laranja
                        conflict  = "GitConflict",  -- magenta
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

