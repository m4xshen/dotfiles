-- only highlight when searching
vim.api.nvim_create_autocmd("CmdlineEnter", { command = "set hlsearch"})
vim.api.nvim_create_autocmd("CmdlineLeave", { command = "set nohlsearch"})

vim.api.nvim_create_autocmd("BufEnter",
   { command = "setlocal formatoptions-=cro" }) -- no auto comment

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.cpp" },
   callback = function()
      vim.keymap.set("n", "<Leader>e", ":terminal ./a.out<CR>", { silent = true })
   end
})

vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.lua" },
   callback = function()
      vim.opt.shiftwidth = 3
      vim.opt.tabstop = 3
      vim.opt.softtabstop = 3
   end
})
