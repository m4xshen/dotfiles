local function map(mode, lhs, rhs, opts)
   opts.noremap = true;
   vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
map({ "n", "v" }, "<Space>", "", { silent = true })

-- leader movements
map("n", "<Leader>w", ":write<CR>", { silent = true })
map("n", "<Leader>s", ":source %<CR>", { silent = true })
map("n", "<Leader>v", ":cd ~/.config/nvim/<CR>", { silent = true })
map("n", "<Leader>h", ":bo vert h ", {})
map("n", "<Leader>t", ":vs<CR>:terminal<CR>i", {})
map("n", "<Leader>l", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<Leader>m", ":make<CR>", { silent = true })

-- system clipboard
map({ "n", "v" }, "<Leader>y", '"+y', { silent = true })
map({ "n" }, "<Leader>Y", '"+y$', { silent = true })
map("n", "<Leader>p", '"+p', { silent = true })

-- center the screen after jump
map("n", "<C-u>", "<C-u>zz", {})
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-b>", "<C-b>zz", {})
map("n", "<C-f>", "<C-f>zz", {})

-- move between windows
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-l>", "<C-w>l", {})

-- block movements
map("v", "K", ":m'<-2<CR>gv=gv", { silent = true }) -- up
map("v", "J", ":m'>+1<CR>gv=gv", { silent = true }) -- down

-- disable arrow keys
map({"", "!"}, "<Right>", "", {})
map({"", "!"}, "<Left>", "", {})
map({"", "!"}, "<Up>", "", {})
map({"", "!"}, "<Down>", "", {})
