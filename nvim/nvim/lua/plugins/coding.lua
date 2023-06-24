return {
   {
      "lukas-reineke/virt-column.nvim",
      opts = {}
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
   -- {
   --    "folke/which-key.nvim",
   --    event = "VeryLazy",
   --    init = function()
   --       vim.o.timeout = true
   --       vim.o.timeoutlen = 300
   --    end,
   --    opts = {
   --       -- your configuration comes here
   --       -- or leave it empty to use the default settings
   --       -- refer to the configuration section below
   --    }
   -- },
   {
      'm4xshen/hardtime.nvim',
      event = "VeryLazy",
      opts = {},
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end
   },
}
