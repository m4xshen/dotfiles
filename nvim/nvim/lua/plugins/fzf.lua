return {
   {
      "ibhagwan/fzf-lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      init = function()
         vim.keymap.set("n", "<leader>f", require("fzf-lua").files, {})
         vim.keymap.set("n", "<leader>g", require("fzf-lua").live_grep, {})
         vim.keymap.set("n", "<leader>h", require("fzf-lua").help_tags, {})
         vim.keymap.set("n", "<leader>v", function()
            require("fzf-lua").files({ cwd = "~/.config/nvim" })
         end, {})
      end,
   },
}
