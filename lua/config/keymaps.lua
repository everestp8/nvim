vim.g.mapleader = " "

-- General mappings
vim.keymap.set('i', 'jj', '<Esc>') -- jj to Esc
vim.keymap.set("t", "jj", "<C-\\><C-n>") -- exit terminal
vim.keymap.set({ "v", "x", "s" }, "<leader>q", "<Esc>") -- quit modes
vim.keymap.set({"n", "v", "o"}, "<A-v>", "<C-v>") -- remap VISUALBLOCK to alt+v

-- Navigation mappings
vim.keymap.set("n", "*", "*N") -- match next without moving
vim.keymap.set("n", "n", "nzz") -- next search result and center
vim.keymap.set("n", "N", "Nzz") -- previous search result and center
vim.keymap.set({ "n", "v" }, "<leader>s", "/") -- search

vim.keymap.set("n", "<C-d>", "5<C-e>M") -- speed down and center
vim.keymap.set("n", "<C-u>", "5<C-y>M") -- speed up and center
vim.keymap.set("n", "<down>", "jzz") -- down and center
vim.keymap.set("n", "<up>", "kzz") -- up and center
vim.keymap.set("n", "<right>", "lzz") -- right and center

vim.keymap.set({ 'n', 'o', 'v' }, '<S-h>', '^') -- move to beginning of line
vim.keymap.set({ 'n', 'o', 'v' }, '<S-l>', '$') -- move to end of line

-- Selection mappings
vim.keymap.set("v", "p", '"_dP') -- save paste in visual
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor
vim.keymap.set("v", "<Tab>", ">gv") -- indent in visual
vim.keymap.set("v", "<S-Tab>", "<gv") -- unindent in visual

-- Buffer mappings
vim.keymap.set("n", "<leader>w", ":w<CR>") -- save
vim.keymap.set("n", "<leader>q", ":q<CR>") -- quit
vim.keymap.set("n", "<leader>Q", ":q!<CR>") -- quit
vim.keymap.set("n", "<leader>o", "<C-i>") -- go forward
vim.keymap.set("n", "<leader>i", "<C-o>") -- go back

-- Window mappings
vim.keymap.set("n", "<leader>k", "<C-w>w") -- go back
vim.keymap.set("n", "<leader>j", "<C-w>W") -- go foward
vim.keymap.set("n", "<leader>Wv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>Wh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>We", "<C-w>=") -- make split windows equal width & height

-- Automation mappings
local fn = require("config.functions")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>u", function() fn.add_char(";") end, opts)
vim.keymap.set("n", "<leader>U", function() fn.add_char(",") end, opts)
vim.keymap.set("n", "<leader>rr", function() fn.run_current_file(false) end, opts)
vim.keymap.set("n", "<leader>RR", function() fn.run_current_file(true) end, opts)
vim.keymap.set({ "n", "v" }, "<leader>S", fn.find_in_line, opts)

