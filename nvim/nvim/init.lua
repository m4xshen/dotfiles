require('settings')
require('abbreviation')
require('mappings.global')
require('autocmds')
require('plugins')

-- plugin setup
require('lualine').setup {
    options = {
	theme = 'catppuccin',
	globalstatus = true,
    }
}
require('gitsigns').setup {}
require('nvim-treesitter.configs').setup {
    auto_install = true,
    ensure_installed = {'c', 'cpp', 'lua', 'vim', 'javascript',
	'html', 'css', 'bash', 'comment', 'help', 'tsx'},
    highlight = {
	enable = true,
    },
    indent = {
	enable = true,
    },
}
require('nvim-lsp-installer').setup {}
require('lspconfig').quick_lint_js.setup{}
