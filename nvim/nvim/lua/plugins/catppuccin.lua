return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      opts = {
         flavour = "mocha",
         color_overrides = {
            mocha = {
               base = "#11111B",
               mantle = "#11111B",
            }
         },
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
}
