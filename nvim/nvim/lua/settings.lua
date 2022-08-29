vim.opt.path = ".,/usr/include,,/home/max/Documents**,/home/max/.config**,/home"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- use Lualine.nvim instead
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10
vim.opt.swapfile = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.laststatus = 3 -- global statusline
vim.opt.guicursor = "" -- disable cursor-styling
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

vim.cmd([[
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_liststyle = 3
colorscheme catppuccin

autocmd FileType * setlocal formatoptions-=cro

augroup vimrc-incsearch-highlight
autocmd!
autocmd CmdlineEnter /,\? :set hlsearch
autocmd CmdlineLeave /,\? :set nohlsearch
augroup END
]])
