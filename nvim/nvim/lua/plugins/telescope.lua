return {
   {
      "nvim-telescope/telescope.nvim", tag = "0.1.1",
      dependencies = { "nvim-lua/plenary.nvim" },

      init = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<Leader>ff", builtin.find_files, { noremap = true })
         vim.keymap.set("n", "<Leader>fb", builtin.buffers, { noremap = true })
         vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { noremap = true })
      end
   }
}
