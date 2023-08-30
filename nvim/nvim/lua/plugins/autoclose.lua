return {
   {
      "m4xshen/autoclose.nvim",
      opts = {
         options = {
            disabled_filetypes = { "text" },
            disable_when_touch = true,
            pair_spaces = true,
         },
         keys = {
            ["'"] = {
               escape = true,
               close = true,
               pair = "''",
               disabled_filetypes = { "markdown" },
            },
            ["`"] = { escape = false, close = true, pair = "``" },
            ["<"] = {
               escape = false,
               close = true,
               pair = "<>",
               enabled_filetypes = { "rust" },
            },
         },
      },
   },
   "windwp/nvim-ts-autotag",
   {
      "kylechui/nvim-surround",
      version = "*",
      event = "VeryLazy",
      config = function()
         require("nvim-surround").setup({
            keymaps = {
               normal = "gs",
               normal_cur = "gss",
            },
         })
      end,
   },
}
