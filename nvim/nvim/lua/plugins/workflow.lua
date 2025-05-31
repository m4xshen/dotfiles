return {
   {
      "m4xshen/hardtime.nvim",
      dependencies = { "MunifTanjim/nui.nvim" },
      lazy = false,
      opts = {
         hints = {
            ["[dcyvV][ia][%(%)]"] = {
               message = function(keys)
                  return "Use " .. keys:sub(1, 2) .. "b instead of " .. keys
               end,
               length = 3,
            },
         },
         ui = {
            size = {
               width = "80%",
               height = "80%",
            },
         },
      },
   },
   -- {
   --    "folke/which-key.nvim",
   --    event = "VeryLazy",
   -- },
}
