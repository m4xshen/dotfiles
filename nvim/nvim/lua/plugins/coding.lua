return {
   {
      "numToStr/Comment.nvim",
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
   {
      'm4xshen/hardtime.nvim',
      event = "VeryLazy",
      opts = {
         notification = false,
         disabled_keys = {
            ["<UP>"] = { "", "i" },
            ["<DOWN>"] = { "", "i" },
            ["<LEFT>"] = { "", "i" },
            ["<RIGHT>"] = { "", "i" },
            ["<Space>"] = { "n", "v" },
         },
      },
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
