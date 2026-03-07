return {
   {
      "lewis6991/gitsigns.nvim",
      opts = {},
   },
   -- {
   --    "tpope/vim-fugitive",
   -- },
   {
      "tanvirtin/vgit.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
      -- Lazy loading on 'VimEnter' event is necessary.
      event = "VimEnter",
      config = function()
         require("vgit").setup({
            settings = {
               live_blame = {
                  enabled = false,
               },
            },
         })
      end,
   },
}
