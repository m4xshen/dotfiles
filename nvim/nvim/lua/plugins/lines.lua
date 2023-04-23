return {
   {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         options = {
            theme = "catppuccin",
            globalstatus = true,
         }
      },
      init = function()
         vim.opt.showmode = false
      end
   },
   {
      'akinsho/bufferline.nvim',
      version = "v3.*",
      dependencies = 'nvim-tree/nvim-web-devicons',
      opts = {
         options = {
            separator_style = "slant",
            mode = "tabs",
            offsets = {
               {
                  filetype = "NvimTree",
                  text = " File Explorer",
                  highlight = "Directory",
                  separator = false
               }
            }
         }
      }
   },
   {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {
         "SmiteshP/nvim-navic",
         "nvim-tree/nvim-web-devicons",
      },
      opts = {
         show_dirname = false,
         show_basename = false
      },
   }
}
