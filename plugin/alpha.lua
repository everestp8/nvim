vim.pack.add({
    'https://github.com/goolord/alpha-nvim'
})

local alpha = require('alpha')
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {}
dashboard.section.buttons.val = {}
dashboard.section.footer.val = {}

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)

