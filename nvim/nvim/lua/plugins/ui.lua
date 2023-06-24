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
         vim.cmd.colorscheme "catppuccin"
      end
   },
}
