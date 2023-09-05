return {
   {
      "MaximilianLloyd/tw-values.nvim",
      keys = {
         {
            "gK",
            "<cmd>TWValues<cr>",
            desc = "Show tailwind CSS values",
         },
      },
      opts = {
         border = "rounded",
         show_unknown_classes = true,
         focus_preview = true,
      },
   },
   {
      "nacro90/numb.nvim",
      opts = {},
   },
   {
      "stevearc/oil.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
         },
         keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-s>"] = "actions.select_split",
            ["<Esc>"] = "actions.close",
         },
         view_options = {
            show_hidden = true,
         },
         float = {
            padding = 5,
         },
      },
      keys = {
         { "<Leader>o", ":lua require('oil').open_float()<CR>" },
      },
   },
   {
      "sbdchd/neoformat",
      config = function()
         vim.keymap.set(
            "n",
            "<Leader>fm",
            ":Neoformat<CR>",
            { silent = true, noremap = true }
         )
         vim.g.neoformat_try_node_exe = 1
      end,
   },
   {
      "laytan/tailwind-sorter.nvim",
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         "nvim-lua/plenary.nvim",
      },
      build = "cd formatter && npm i && npm run build",
      config = {},
   },
   {
      "numToStr/Comment.nvim",
      opts = {},
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("colorizer").setup()
      end,
   },
   {
      "themaxmarchuk/tailwindcss-colors.nvim",
      config = function()
         require("tailwindcss-colors").setup()
      end,
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      branch = "v3",
      config = function()
         require("ibl").setup()
      end
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end,
   },
   {
      "shortcuts/no-neck-pain.nvim",
      version = "*",
      config = function()
         vim.keymap.set("n", "<Leader>n", ":NoNeckPain<CR>")
      end,
   },
}
