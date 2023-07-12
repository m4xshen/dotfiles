return {
   {
      "lervag/vimtex",
      config = function()
         vim.cmd([[
         filetype plugin indent on
         let g:vimtex_view_method = 'zathura'
         ]])
      end,
   },
}
