return {
   -- {
   --    "lukas-reineke/virt-column.nvim",
   --    opts = {},
   -- },
   {
      "m4xshen/smartcolumn.nvim",
      opts = {
         disabled_filetypes = {
            "netrw",
            "NvimTree",
            "Lazy",
            "mason",
            "help",
            "text",
            "markdown",
            "tex",
            "html",
         },
         scope = "window",
      },
   },
   {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         options = {
            theme = "catppuccin",
         },
         -- options = {
         --    theme = {
         --       normal = {
         --          c = { fg = "#b4befe" },
         --       },
         --       inactive = {
         --          c = { fg = "#b4befe" },
         --       },
         --    },
         --    section_separators = "",
         --    component_separators = { left = "──", right = "──" },
         --    padding = 0,
         -- },
         -- sections = {
         --    lualine_a = {},
         --    lualine_b = {},
         --    lualine_c = {
         --       {
         --          "branch",
         --          icon = { "", color = { fg = "#b4befe" } },
         --          color = { fg = "#cdd6f4" },
         --          padding = 1,
         --       },
         --       {
         --          "diff",
         --          padding = 1,
         --       },
         --       {
         --          "diagnostics",
         --          padding = 1,
         --          symbols = {
         --             error = " ",
         --             warn = " ",
         --             info = " ",
         --             hint = " ",
         --          },
         --       },
         --       "%=",
         --       {
         --          "filetype",
         --          colored = false,
         --          icon_only = true,
         --          padding = { left = 1, right = 0 },
         --          separator = "∙",
         --       },
         --       {
         --          "filename",
         --          file_status = true,
         --          newfile_status = false,
         --          path = 1,
         --          padding = 1,
         --          symbols = {
         --             modified = "●",
         --          },
         --          color = { fg = "#cdd6f4" },
         --       },
         --    },
         --    lualine_x = {},
         --    lualine_y = {},
         --    lualine_z = {
         --       {
         --          "progress",
         --          padding = 1,
         --          color = { fg = "#cdd6f4" },
         --       },
         --    },
         -- },
         -- inactive_sections = {
         --    lualine_a = {},
         --    lualine_b = {},
         --    lualine_c = {},
         --    lualine_x = {},
         --    lualine_y = {},
         --    lualine_z = {},
         -- },
      },
      -- init = function()
      --    vim.opt.showmode = false
      --    vim.opt.fillchars = {
      --       stl = "─",
      --       stlnc = "─",
      --    }
      -- end,
   },
   -- {
   --    "akinsho/bufferline.nvim",
   --    dependencies = "nvim-tree/nvim-web-devicons",
   --    opts = {
   --       options = {
   --          separator_style = "slant",
   --          mode = "tabs",
   --          offsets = {
   --             {
   --                filetype = "NvimTree",
   --                text = " File Explorer",
   --                highlight = "Directory",
   --                separator = false,
   --             },
   --          },
   --       },
   --    },
   -- },
   {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      theme = "catppuccin",
      dependencies = {
         "SmiteshP/nvim-navic",
         "nvim-tree/nvim-web-devicons",
      },
      opts = {
         show_dirname = false,
         show_basename = false,
      },
   },
   {
      "yamatsum/nvim-cursorline",
      opts = {
         cursorword = {
            enable = true,
            min_length = 3,
            hl = { underline = true },
         },
         cursorline = {
            enable = false,
         },
      },
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      opts = {},
   },
}
