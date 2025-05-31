return {
   -- {
   --    "philosofonusus/morta.nvim",
   --    name = "morta",
   --    priority = 1000,
   --    opts = {},
   --    config = function()
   --       vim.cmd.colorscheme("morta")
   --    end,
   -- },
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
         flavour = "mocha",
         custom_highlights = function(colors)
            return {
               WinSeparator = {
                  fg = colors.surface0,
               },
            }
         end,
         color_overrides = {
            mocha = {
               base = "#000000",
               mantle = "#000000",
            },
         },
         integrations = {
            notify = true,
            mason = true,
            fzf = true,
            aerial = true,
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
      lazy = false,
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

         -- for mac
         vim.keymap.set("n", "˙", require("smart-splits").resize_left)
         vim.keymap.set("n", "∆", require("smart-splits").resize_down)
         vim.keymap.set("n", "˚", require("smart-splits").resize_up)
         vim.keymap.set("n", "¬", require("smart-splits").resize_right)
      end,
   },
   {
      "mvllow/modes.nvim",
      opts = {
         colors = {
            bg = "",
            copy = "#f9e2af",
            delete = "#f38ba8	",
            insert = "#a6e3a1",
            visual = "#cba6f7",
         },
      },
   },
}
