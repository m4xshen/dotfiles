return {
   {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
         require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
               "c",
               "cpp",
               "python",
               "lua",
               "vim",
               "javascript",
               "astro",
               "html",
               "css",
               "comment",
               "vimdoc",
               "tsx",
            },
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
         })
      end,
   },
   {
      "nvim-treesitter/nvim-treesitter-textobjects",
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      config = function()
         require("nvim-treesitter.configs").setup({
            textobjects = {
               select = {
                  enable = true,
                  lookahead = true,
                  keymaps = {
                     ["af"] = "@function.outer",
                     ["if"] = "@function.inner",
                     ["ac"] = "@class.outer",
                     ["ic"] = "@class.inner",
                  },
               },
            },
         })
      end,
   },
}
