return {
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.1",
      dependencies = { "nvim-lua/plenary.nvim" },
      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
         vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
         vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
         vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      end,
   },
}
