return {
	"nvim-telescope/telescope.nvim",
    branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<M-k>"] = actions.move_selection_previous,
						["<M-j>"] = actions.move_selection_next,
						["<M-u>"] = actions.send_selected_to_qflist + actions.open_qflist,
					}
				}
			}
		})
		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>")
	end
}

