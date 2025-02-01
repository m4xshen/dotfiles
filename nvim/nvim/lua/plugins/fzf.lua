return {
   {
      "ibhagwan/fzf-lua",
      dependencies = {
         "nvim-tree/nvim-web-devicons",
      },
      keys = {
         {
            "<Leader>f",
            function()
               require("fzf-lua").files()
            end,
         },
         {
            "<Leader>g",
            function()
               require("fzf-lua").live_grep()
            end,
         },
         {
            "<Leader>h",
            function()
               require("fzf-lua").help_tags()
            end,
         },
         {
            "<Leader>v",
            function()
               require("fzf-lua").files({ cwd = "~/.config/nvim" })
            end,
         },
      },
   },
}
