vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use{
	'catppuccin/nvim',
	as = 'catppuccin'
    }
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'lewis6991/gitsigns.nvim'
    -- use 'm4xshen/autoclose.nvim'
    use {
	'nvim-treesitter/nvim-treesitter',
	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {
	'williamboman/nvim-lsp-installer',
	'neovim/nvim-lspconfig',
    }
end)
