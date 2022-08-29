vim.cmd([[
autocmd FileType cpp lua require "mappings.cpp"
autocmd FileType arduino lua require "mappings.arduino"
autocmd FileType python lua require "mappings.python"
autocmd FileType tex lua require "mappings.latex"
]])
