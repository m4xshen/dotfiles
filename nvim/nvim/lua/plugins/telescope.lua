return {
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.8",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
         defaults = {
            file_ignore_patterns = { "node_modules", ".git", ".next" },
         },
      },
      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>f", function()
            builtin.find_files({
               hidden = true,
               no_ignore = true,
            })
         end, {})
         vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
         vim.keymap.set("n", "<leader>b", builtin.buffers, {})
         vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
      end,
   },
   {
      "piersolenski/telescope-import.nvim",
      dependencies = "nvim-telescope/telescope.nvim",
      config = function()
         require("telescope").load_extension("import")
         vim.keymap.set("n", "<leader>i", ":Telescope import<cr>", {})
      end,
   },
}
