vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' }
})

local harpoon = require('harpoon')
harpoon:setup()

vim.keymap.set("n", "<leader>d", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>A", function() harpoon:list():remove() end)

harpoon:extend({
    UI_CREATE = function(cx)
        vim.keymap.set("n", "l", function()
            harpoon.ui:select_menu_item()
        end, { buffer = cx.bufnr })
    end,
})

