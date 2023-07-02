return {
   -- {
   --    "startup-nvim/startup.nvim",
   --    dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
   --    config = function()
   --       require("startup").setup({theme = "evil"})
   --    end
   -- },
   {
      "m4xshen/catppuccinight.nvim",
      name = "catppuccin",
      opts = {
         flavour = "mocha",
         custom_highlights = function(colors)
            return {
               VertSplit = { fg = colors.surface0 },
            }
         end,
      },
      init = function()
         vim.cmd.colorscheme "catppuccin"
      end
   },
   {
      'rcarriga/nvim-notify',
      opts = {},
      config = function()
         vim.notify = require("notify")
      end
   },
}
