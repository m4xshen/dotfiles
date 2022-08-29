local map = vim.api.nvim_buf_set_keymap
local file = vim.fn.expand('%')

-- compile
map(0, "n", "<Leader>c", ":te arduino-cli compile --fqbn arduino:avr:uno " .. file .. "<CR>", {noremap = true})

-- execute
map(0, "n", "<Leader>e", ":te arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno " .. file .. "<CR>", {noremap = true})

-- open serial port
map(0, "n", "<Leader>s", ":te screen /dev/ttyACM0<CR>", {noremap = true})

-- comment & uncomment
map(0, "v", "C", ":s.^.//<CR>gv", {noremap = true})
map(0, "v", "U", ":s.//.<CR>gv", {noremap = true})
