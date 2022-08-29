local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- leader movements
map("n", "<Leader>w", ":w<CR>", {noremap = true})
map("n", "<Leader>s", ":luafile %<CR>", {noremap = true})
map("n", "<Leader>v", ":edit $MYVIMRC<CR>", {noremap = true})
map("n", "<Leader>f", ":find ", {noremap = true})
map("n", "<Leader>h", ":bo vert h ", {noremap = true})
map("n", "<Leader>t", ":vs<CR>:terminal<CR>i", {noremap = true})
map("n", "<Leader>l", ":Lexplore<CR>", {noremap = true})

-- bash-like movements
map("c", "<C-a>", "<Home>", {noremap = true})

-- move between windows
map("n", "<C-k>", "<C-w>k", {noremap = true})
map("n", "<C-j>", "<C-w>j", {noremap = true})
map("n", "<C-h>", "<C-w>h", {noremap = true})
map("n", "<C-l>", "<C-w>l", {noremap = true})

-- block movements
map("v", "K", ":m'<-2<CR>gv=gv", {noremap = true, silent = true}) -- up
map("v", "J", ":m'>+1<CR>gv=gv", {noremap = true, silent = true}) -- down
map("v", "H", ":m0<CR>gv=gv", {noremap = true, silent = true}) -- gg
map("v", "L", ":m$<CR>gv=gv", {noremap = true, silent = true}) -- G

-- block arrow key XD
map("", "<Right>", "", {noremap = true})
map("", "<Left>", "", {noremap = true})
map("", "<Up>", "", {noremap = true})
map("", "<Down>", "", {noremap = true})
map("!", "<Right>", "", {noremap = true})
map("!", "<Left>", "", {noremap = true})
map("!", "<Up>", "", {noremap = true})
map("!", "<Down>", "", {noremap = true})
