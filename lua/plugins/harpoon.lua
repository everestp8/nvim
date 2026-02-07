return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        vim.keymap.set("n", "<leader>d", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>A", function() harpoon:list():remove() end)
        vim.keymap.set("n", "<leader>i", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>o", function() harpoon:list():next() end)

        harpoon:extend({
			UI_CREATE = function(cx)
				vim.keymap.set("n", "l", function()
					harpoon.ui:select_menu_item()
				end, { buffer = cx.bufnr })
			end,
		})
    end,
}

