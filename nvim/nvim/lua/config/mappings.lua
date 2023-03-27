local function map(mode, lhs, rhs, opts)
   -- set default value if not specify
   if opts.noremap == nil then opts.noremap = true end
   if opts.silent == nil then opts.silent = true end

   vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
map({ "n", "v" }, "<Space>", "", { silent = true })

-- leader movements
map("n", "<Leader>w", ":write<CR>", {})
map("n", "<Leader>s", ":source %<CR>", {})
map("n", "<Leader>v", ":cd ~/.config/nvim/<CR>", {})
map("n", "<Leader>h", ":botright vertical help ", { silent = false })
map("n", "<Leader>t", ":vsplit<CR>:terminal<CR>i", {})
map("n", "<Leader>l", ":NvimTreeToggle<CR>", {})
map("n", "<Leader>m", ":make<CR>", {})

-- system clipboard
map({ "n", "v" }, "<Leader>y", '"+y', {})
map({ "n" }, "<Leader>Y", '"+y$', {})
map("n", "<Leader>p", '"+p', {})

-- move between windows
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-l>", "<C-w>l", {})

-- block movements
map("v", "K", ":m'<-2<CR>gv=gv", {}) -- up
map("v", "J", ":m'>+1<CR>gv=gv", {}) -- down

-- disable arrow keys
map({"", "!"}, "<Right>", "", {})
map({"", "!"}, "<Left>", "", {})
map({"", "!"}, "<Up>", "", {})
map({"", "!"}, "<Down>", "", {})
