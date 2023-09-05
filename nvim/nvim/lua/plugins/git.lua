return {
   {
      "lewis6991/gitsigns.nvim",
      opts = {},
   },
   {
      "NeogitOrg/neogit",
      dependencies = {
         "nvim-lua/plenary.nvim", -- required
         "nvim-telescope/telescope.nvim", -- optional
         "sindrets/diffview.nvim", -- optional
      },
      config = true,
      keys = {
         { "<Leader>g", ":Neogit<CR>" },
      },
   },
}
