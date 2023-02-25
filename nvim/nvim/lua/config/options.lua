-- show line number and relative line number on the left
vim.opt.number = true
vim.opt.relativenumber = true

-- use global status line
vim.opt.laststatus = 3

-- ignore case when searching
vim.opt.ignorecase = true

-- override the ignorecase option if the pattern contains upper case characters
vim.opt.smartcase = true

-- number of space to use for each step of indent
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- use number of spaces to insert a <Tab>
vim.opt.expandtab = true

-- minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- don't generate swapfile
vim.opt.swapfile = false

-- put the new window right or below of the current one
vim.opt.splitright = true
vim.opt.splitbelow = true

-- highlight the line number of the cursor
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- milliseconds to wait for a mapped sequence to complete
vim.opt.timeoutlen = 300

-- disable cursor-styling
vim.opt.guicursor = ""

-- disable mouse
vim.opt.mouse = ""

-- enables 24-bit RGB color in the terminal UI
vim.opt.termguicolors = true
