return {
   {
      "NStefan002/screenkey.nvim",
      lazy = false,
      version = "*",
   },
   {
      "stevearc/conform.nvim",
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            astro = { "prettier" },
            cpp = { "clang-format" },
         },
         format_after_save = {
            lsp_format = "fallback",
         },
      },
   },
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
      opts = {
         columns = { "" },
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
      "numToStr/Comment.nvim",
      opts = {
         pre_hook = function()
            return vim.bo.commentstring
         end,
      },
   },
   {
      "JoosepAlviste/nvim-ts-context-commentstring",
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function()
         require("colorizer").setup()
      end,
   },
   {
      "roobert/tailwindcss-colorizer-cmp.nvim",
   },
   {
      "shortcuts/no-neck-pain.nvim",
      version = "*",
      keys = {
         { "<Leader>n", ":NoNeckPain<CR>" },
      },
   },
   {
      "chipsenkbeil/distant.nvim",
      branch = "v0.3",
      config = function()
         require("distant"):setup()
      end,
   },
   {
      "mcauley-penney/visual-whitespace.nvim",
      opts = {
         highlight = { link = "LineNr" },
      },
   },
}
