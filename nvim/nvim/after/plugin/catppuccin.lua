require("catppuccin").setup({
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
})

vim.cmd.colorscheme "catppuccin"
