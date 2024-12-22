return {
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
      end,
   },
   {
      "yetone/avante.nvim",
      event = "VeryLazy",
      lazy = false,
      version = false,
      build = "make",
      opts = {
         mappings = {
            diff = {
               cursor = "cr",
            },
         },
      },
      dependencies = {
         "stevearc/dressing.nvim",
         "nvim-lua/plenary.nvim",
         "MunifTanjim/nui.nvim",
         "nvim-tree/nvim-web-devicons",
         {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
               file_types = { "Avante" },
            },
            ft = { "Avante" },
         },
      },
   },
}
