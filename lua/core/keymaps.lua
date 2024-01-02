vim.g.mapleader = " "

local keymap = vim.keymap

-- insertion mode --
keymap.set("i", "jk", "<ESC>")

-- visual mode --
-- line movements
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal mode --
-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split (new win on right)
keymap.set("n", "<leader>sh", "<C-w>s") -- hortizontal split (new win on below)

-- no highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ---------- plugins -------------- --
-- nvim
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- bufferline
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

