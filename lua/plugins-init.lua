-- calling vim-plug in lua
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Lualine
Plug('nvim-lualine/lualine.nvim')
-- Color theme
Plug('navarasu/onedark.nvim')
-- which key
Plug('folke/which-key.nvim')
-- nvim tree
Plug('nvim-tree/nvim-tree.lua')
-- Toggleterm
Plug('akinsho/toggleterm.nvim')
-- Required for telescope
Plug('nvim-lua/plenary.nvim')
-- Telescope
Plug('nvim-telescope/telescope.nvim')
-- Reuiqred for live grep in telescope
Plug('BurntSushi/ripgrep')
-- LSP
Plug('neovim/nvim-lspconfig')
-- Copilot
Plug('github/copilot.vim')
-- Mason - autoinstalling language servers
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
-- Lualine LSP loading progress
Plug('arkav/lualine-lsp-progress')

-- Required for prettier
Plug('jose-elias-alvarez/null-ls.nvim')
-- Prettier
Plug('MunifTanjim/prettier.nvim')
-- Lazyy git
Plug('kdheepak/lazygit.nvim')
-- LSP
Plug('neovim/nvim-lspconfig')
-- LSP saga
Plug('glepnir/lspsaga.nvim')
-- Autocompletion
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
-- Toggle comment
Plug('tpope/vim-commentary')
-- treesitter
Plug('nvim-treesitter/nvim-treesitter')
-- bufferline
Plug('akinsho/bufferline.nvim')
-- bufferline icons
Plug('nvim-tree/nvim-web-devicons')
-- eslint
Plug('MunifTanjim/eslint.nvim')
-- autoclose
Plug('windwp/nvim-autopairs')
-- lsp icons
Plug('onsails/lspkind.nvim')

-- plugins for r
Plug('jalvesaq/Nvim-R')

-- latex
Plug('lervag/vimtex')





vim.call('plug#end')




-- load theme
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()



-- require all plugin configs
require('plugins.lualine')
require('plugins.wk')
require('plugins.nvimtree')
require('plugins.toggleterm')

require('plugins.mason')
require('plugins.prettier')
require('plugins.cmp')

require('plugins.lsp')
require('plugins.treesitter')
require('plugins.autopair')
require('plugins.lspsaga')
require('plugins.bufferline')
