return {
   {
      "m4xshen/hardtime.nvim",
      dependencies = { "MunifTanjim/nui.nvim" },
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
         require("leap").add_default_mappings()
      end,
   },
}
