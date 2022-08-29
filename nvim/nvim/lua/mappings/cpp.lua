local map = vim.api.nvim_buf_set_keymap
local file = vim.fn.expand('%')

-- compile
map(0, "n", "<Leader>c", ":te g++ " .. file .. "<CR>", {noremap = true, silent = true})

-- execute
map(0, "n", "<Leader>e", ":te ./a.out<CR>", {noremap = true, silent = true})

-- comment & uncomment
map(0, "v", "C", ":s.^.//<CR>gv", {noremap = true, silent = true})
map(0, "v", "U", ":s.//.<CR>gv", {noremap = true, silent = true})
