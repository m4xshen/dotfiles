return {
   {
      "m4xshen/smartcolumn.nvim",
      opts = {
         disabled_filetypes = { "netrw", "NvimTree", "Lazy", "mason", "help",
            "text", "markdown", "tex", "html" },
         scope = "window"
      },
   },
   {
      "lukas-reineke/virt-column.nvim",
      opts = {}
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function ()
         require 'colorizer'.setup()
      end
   },
   {
      "themaxmarchuk/tailwindcss-colors.nvim",
      config = function ()
         require("tailwindcss-colors").setup()
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      opts = {}
   },
   {
      'wakatime/vim-wakatime'
   },
   {
      'm4xshen/hardtime.nvim',
      opts = {
         restricted_keys = { "h", "j", "k", "l", "-", "+",
            "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>", "<CR>", "<C-M>" },
      }
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end
   },
   {
      'mhartington/formatter.nvim',
      config = function()
         local util = require "formatter.util"

         require("formatter").setup {
            filetype = {
               lua = {
                  require("formatter.filetypes.lua").stylua,

                  function()
                     return {
                        exe = "stylua",
                        args = {
                           "--stdin-filepath",
                           util.escape_path(util.get_current_buffer_file_path()),
                           "--indent-type",
                           "Spaces"
                        },
                        stdin = true,
                     }
                  end
               },

               ["*"] = {
                  require("formatter.filetypes.any").remove_trailing_whitespace
               }
            }
         }
      end
   }
}
