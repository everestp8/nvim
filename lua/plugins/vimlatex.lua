return {
    "lervag/vimtex",
    lazy = false,
    tag = "v2.15",
    init = function()
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = "-lualatex"
        }
        vim.g.vimtex_view_method = "zathura"
    end
}

