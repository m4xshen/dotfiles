return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
         flavour = "mocha",
         custom_highlights = function(colors)
            return {
               WinSeparator = {
                  fg = colors.lavender,
               },
            }
         end,
         color_overrides = {
            mocha = {
               base = "#11111b",
               mantle = "#11111b",
            },
         },
         integrations = {
            notify = true,
         },
      },
      init = function()
         vim.cmd.colorscheme("catppuccin")
      end,
   },
   {
      "rcarriga/nvim-notify",
      config = function()
         vim.notify = require("notify")
      end,
   },
   -- {
   --    "levouh/tint.nvim",
   --    opts = {
   --       window_ignore_function = function(winid)
   --          local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
   --          return floating
   --       end,
   --       highlight_ignore_patterns = { "WinSeparator", "Status.*" },
   --    },
   -- },
   {
      "mrjones2014/smart-splits.nvim",
      config = function()
         vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
         vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
         vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
         vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
         vim.keymap.set("n", "<C-c>", "<C-w>c")

         vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
         vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
         vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
         vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
      end,
   },
}
