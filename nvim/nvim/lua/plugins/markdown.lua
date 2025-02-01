return {
   {
      "iamcco/markdown-preview.nvim",
      build = function()
         vim.fn["mkdp#util#install"]()
      end,
   },
   {
      "MeanderingProgrammer/render-markdown.nvim",
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      opts = {},
   },
}
