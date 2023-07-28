return {
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
         vim.cmd.colorscheme("catppuccin")
      end,
   },
   {
      "rcarriga/nvim-notify",
      opts = {},
      config = function()
         vim.notify = require("notify")
      end,
   },
   {
      "gorbit99/codewindow.nvim",
      config = function()
         local codewindow = require("codewindow")
         codewindow.setup({
            auto_enable = true,
            window_border = 'none'
         })
         codewindow.apply_default_keybinds()
      end,
   },
}
