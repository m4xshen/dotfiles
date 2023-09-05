return {
   {
      "m4xshen/hardtime.nvim",
      dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
      opts = {
         allow_different_key = true,
         disabled_keys = {
            ["<Space>"] = { "n", "x" },
         },
         disabled_filetypes = {
            "qf",
            "netrw",
            "NvimTree",
            "lazy",
            "mason",
            "oil",
            "TelescopePrompt",
            "minifiles",
         },
         hints = {
            ["[dcyvV][ia][%(%)]"] = {
               message = function(keys)
                  return "Use " .. keys:sub(1, 2) .. "b instead of " .. keys
               end,
               length = 3,
            },
         },
      },
   },
   {
      "fedepujol/move.nvim",
      config = function()
         vim.keymap.set(
            "v",
            "K",
            ":MoveBlock(-1)<CR>",
            { noremap = true, silent = true }
         )
         vim.keymap.set(
            "v",
            "J",
            ":MoveBlock(1)<CR>",
            { noremap = true, silent = true }
         )
      end,
   },
}
