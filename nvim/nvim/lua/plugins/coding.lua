return {
   {
      "m4xshen/smartcolumn.nvim",
      opts = {
         disabled_filetypes = { "netrw", "NvimTree", "Lazy", "mason", "help",
            "text", "markdown", "tex", "html" },
         scope = "window"
      },
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function ()
         require 'colorizer'.setup()
      end
   },
   {
      "themaxmarchuk/tailwindcss-colors.nvim",
      config = function ()
         require("tailwindcss-colors").setup()
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      opts = {}
   },
}

-- long line of text
-- shorter text
-- long line of text
