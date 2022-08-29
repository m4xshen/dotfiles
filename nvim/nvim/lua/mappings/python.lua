local map = vim.api.nvim_buf_set_keymap

-- compile & execute
map(0, "n", "<Leader>e", ":te python <C-r>%<CR>", {noremap = true})
