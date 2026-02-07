return {
    "mistweaverco/kulala.nvim",
    keys = {
        { "<leader>t", desc = "Send request" },
        { "<leader>RA", desc = "Send all requests" },
        { "<leader>RB", desc = "Open scratchpad" },
    },
    ft = {"http", "rest"},
    opts = {
        global_keymaps = true,
        global_keymaps_prefix = "<leader>R",
        kulala_keymaps_prefix = "",
    },
    config = function(_, opts)
        require("kulala").setup(opts)
    end,
}
