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
      "aznhe21/actions-preview.nvim",
      config = function()
         vim.keymap.set(
            { "v", "n" },
            "<Leader>ca",
            require("actions-preview").code_actions
         )
      end,
   },
}
