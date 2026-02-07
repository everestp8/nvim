vim.g.mapleader = " "

-- General mappings
vim.keymap.set('i', 'jj', '<Esc>') -- jj to Esc
vim.keymap.set("t", "jj", "<C-\\><C-n>") -- exit terminal
vim.keymap.set({ "v", "x", "s" }, "<leader>q", "<Esc>") -- quit modes

-- Navigation mappings
vim.keymap.set("n", "*", "*N") -- match next without moving
vim.keymap.set("n", "n", "nzz") -- next search result and center
vim.keymap.set("n", "N", "Nzz") -- previous search result and center
vim.keymap.set("n", "<C-d>", "5<C-e>M") -- speed down and center
vim.keymap.set("n", "<C-u>", "5<C-y>M") -- speed up and center
vim.keymap.set("n", "<C-j>", "jzz") -- down and center
vim.keymap.set("n", "<C-k>", "kzz") -- up and center
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
vim.keymap.set("n", "<C-o>", "<C-i>", { noremap = true, silent = true }) -- go forward
vim.keymap.set("n", "<C-i>", "<C-o>", { noremap = true, silent = true }) -- go back

-- Window mappings
vim.keymap.set("n", "<leader>k", "<C-w>w") -- go back
vim.keymap.set("n", "<leader>j", "<C-w>W") -- go foward
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Tab mappings
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>O", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>I", ":tabp<CR>") --  go to previous tab

-- Automation mappings
local fn = require("config.functions")
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>oo", fn.add_semicolon, opts)
vim.keymap.set("n", "<leader>rr", fn.run_current_file, opts)

