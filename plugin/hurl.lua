vim.pack.add({
  'https://github.com/jellydn/hurl.nvim',
})

require('hurl').setup()

vim.api.nvim_create_autocmd("FileType", {
    pattern = "hurl",
    callback = function()
        vim.keymap.set("n", "<leader>rr", ":HurlRunnerAt<CR>", {
            buffer = true,
            silent = true,
            desc = "Run Hurl request at cursor"
        })
    end,
})

