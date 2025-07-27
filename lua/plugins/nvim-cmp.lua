local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
        "hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets"
	},
	config = function()
		local cmp = require('cmp')
		require('luasnip.loaders.from_vscode').lazy_load()

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<M-k>"] = cmp.mapping.select_prev_item(),
				["<M-j>"] = cmp.mapping.select_next_item(),
				["<M-p>"] = cmp.mapping.complete(),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						if not cmp.get_selected_entry() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                        end
                        cmp.confirm({ select = false })
					elseif has_words_before() then
						cmp.complete()
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "luasnip" },
				{ name = "path" },
			}),
		})
	end
}

