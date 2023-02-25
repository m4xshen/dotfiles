-- only highlight when searching
vim.api.nvim_create_autocmd("CmdlineEnter", {
   callback = function ()
      vim.opt.hlsearch = true
   end
})
vim.api.nvim_create_autocmd("CmdlineLeave", {
   callback = function ()
      vim.opt.hlsearch = false
   end
})

-- disable auto comment
vim.api.nvim_create_autocmd("BufEnter", {
   callback = function ()
      vim.opt.formatoptions = { c = false, r = false, o = false }
   end
})

-- keymap for .cpp file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.cpp" },
   callback = function()
      vim.keymap.set("n", "<Leader>e", ":terminal ./a.out<CR>", { silent = true })
   end
})

-- tab format for .lua file
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.lua" },
   callback = function()
      vim.opt.shiftwidth = 3
      vim.opt.tabstop = 3
      vim.opt.softtabstop = 3
   end
})
