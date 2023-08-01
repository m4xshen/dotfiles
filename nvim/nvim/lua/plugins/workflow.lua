return {
   {
      "m4xshen/hardtime.nvim",
      opts = {
         disabled_keys = {
            ["<Space>"] = { "n", "x" },
         },
         disabled_filetypes = {
            "qf",
            "netrw",
            "NvimTree",
            "lazy",
            "mason",
            "oil",
         },
      },
   },
   {
      "fedepujol/move.nvim",
      config = function()
         vim.keymap.set(
            "v",
            "K",
            ":MoveBlock(-1)<CR>",
            { noremap = true, silent = true }
         )
         vim.keymap.set(
            "v",
            "J",
            ":MoveBlock(1)<CR>",
            { noremap = true, silent = true }
         )
      end,
   },
   {
      "ggandor/leap.nvim",
      config = function()
         vim.keymap.set({'n', 'x', 'o'}, '<Leader>l', '<Plug>(leap-forward-to)')
         vim.keymap.set({'n', 'x', 'o'}, '<Leader>L', '<Plug>(leap-backward-to)')
         vim.keymap.set({'n', 'x', 'o'}, '<Leader>gl', '<Plug>(leap-from-window)')
      end,
   },
}
