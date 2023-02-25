-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup({
   -- autoclose
   "m4xshen/autoclose.nvim",
   "windwp/nvim-ts-autotag",

   -- smart colorcolumn
   "m4xshen/smartcolumn.nvim",

   -- theme
   { "catppuccin/nvim", name = "catppuccin" },

   {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
   },

   -- color highlighter
   { "norcalli/nvim-colorizer.lua", opts = {} },

   -- indentation guide
   { "lukas-reineke/indent-blankline.nvim", opts = {} },

   -- file tree
   {
      'nvim-tree/nvim-tree.lua',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
   },

   -- git
   "lewis6991/gitsigns.nvim",
   "tpope/vim-fugitive",

   -- treesitter
   {
      "nvim-treesitter/nvim-treesitter",
      build = function()
         local ts_update =
         require("nvim-treesitter.install").update({ with_sync = true })
         ts_update()
      end,
   },

   -- markdown preview
   {
      "iamcco/markdown-preview.nvim",
      build = function()
         vim.fn["mkdp#util#install"]()
      end,
   },

   -- fuzzy finder
   {
      "nvim-telescope/telescope.nvim", tag = "0.1.1",
      dependencies = { "nvim-lua/plenary.nvim" },
   },

   -- lsp
   "neovim/nvim-lspconfig",
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",
   "onsails/lspkind.nvim",

   -- auto complete
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-nvim-lsp",
   "hrsh7th/cmp-nvim-lua",
   "hrsh7th/cmp-path",
   "hrsh7th/cmp-cmdline",
   'hrsh7th/cmp-buffer',

   -- snippet
   "L3MON4D3/LuaSnip",
   "saadparwaiz1/cmp_luasnip",
})
