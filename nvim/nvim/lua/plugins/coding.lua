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
   {
      'wakatime/vim-wakatime'
   },
   {
      'm4xshen/hardtime.nvim',
      opts = {
         restricted_keys = { "h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>", "<CR>", "<C-M>" },
         resetting_keys = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "d", "D", "p", "P" },
      }
   },
   {
      'chipsenkbeil/distant.nvim',
      branch = 'v0.2',
      config = function()
         require('distant').setup {
            ['*'] = require('distant.settings').chip_default()
         }
      end
   },
}
