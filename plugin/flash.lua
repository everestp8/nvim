vim.pack.add({
    'https://github.com/folke/flash.nvim'
})

require("flash").setup({
    prompt = {
        prefix = { { "//", "FlashPromptIcon" } },
    },
    highlight = { backdrop = false },
    modes = {
        char = {
            enabled = false,
        },
        search = {
            enabled = false,
        },
        jump = {
            autojump = true,
        }
    }
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, 'FlashLabel', { fg = '#ffffff', bg = '#ff00ff', bold = true })
    end,
})

-- thanks to leap.nvim!
vim.api.nvim_create_autocmd('CmdlineLeave', {
    group = vim.api.nvim_create_augroup('LeapOnSearch', {}),
    callback = function()
        local ev = vim.v.event
        local is_search_cmd = (ev.cmdtype == '/') or (ev.cmdtype == '?')

        if is_search_cmd and (not ev.abort) then
            vim.schedule(function()
                local stats = vim.fn.searchcount({ recompute = 1, maxcount = 0 })
                local cnt = stats.total or 0

                if cnt > 1 then
                    require('flash').jump({
                        pattern = vim.fn.getreg('/')
                    })
                end

                vim.cmd('nohlsearch')
                vim.cmd('norm zz')
            end)
        end
    end,
})

