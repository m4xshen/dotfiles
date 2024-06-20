return {
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.6",
      dependencies = { "nvim-lua/plenary.nvim" },
      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>f", builtin.find_files, {})
         vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
         vim.keymap.set("n", "<leader>b", builtin.buffers, {})
         vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
      end,
   },
}
