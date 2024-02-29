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
         },
      },
   },
   "windwp/nvim-ts-autotag",
   {
      "kylechui/nvim-surround",
      version = "*",
      event = "VeryLazy",
      opts = {
         keymaps = {
            normal = "gs",
            normal_cur = "gss",
         },
      },
   },
}
