vim.g.mapleader = " "

-- General mappings
vim.keymap.set('i', 'jj', '<Esc>') -- jj to Esc
vim.keymap.set("t", "jj", "<C-\\><C-n>") -- exit terminal
vim.keymap.set("n", "<leader>ww", ":w<CR>") -- save
vim.keymap.set("n", "<leader>qq", ":q<CR>") -- quit
vim.keymap.set("n", "<leader>q!", ":q!<CR>") -- quit
vim.keymap.set("n", "<leader>qa", ":qa<CR>") -- quit all
vim.keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
vim.keymap.set({ "v", "x", "s" }, "<leader>qq", "<Esc>") -- quit modes
vim.keymap.set("v", "p", '"_dP') -- save paste in visual
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- Window mappings
vim.keymap.set("n", "<leader>kk", "<C-w>w") -- go back
vim.keymap.set("n", "<leader>jj", "<C-w>W") -- go foward
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Tab mappings
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Automation mappings
local fn = require("config.core.functions")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>oo", fn.add_semicolon, opts)
vim.keymap.set("n", "<leader>rr", fn.run_current_file, opts)

