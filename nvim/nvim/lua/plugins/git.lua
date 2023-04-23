return {
   "tpope/vim-fugitive",
   {
      "lewis6991/gitsigns.nvim",
      opts = {},
      init = function()
         local opt = { noremap = true, silent = true }
         vim.keymap.set("n", "<Leader>gs", ":Git<CR>", opt)
         vim.keymap.set("n", "<Leader>gl", ":Git log<CR>", opt)
         vim.keymap.set("n", "<Leader>ga", ":Git add .<CR>", opt)
         vim.keymap.set("n", "<Leader>gc", ":Git commit<CR>", opt)
      end
   }
}
