local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

vim.env.PATH = '/opt/homebrew/bin:' .. vim.env.PATH

Plug('williamboman/mason.nvim') -- Must
Plug('williamboman/mason-lspconfig.nvim') -- Must
Plug('neovim/nvim-lspconfig') -- HMMMMMMMM
-- Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('stevearc/conform.nvim')
Plug('nvim-lua/plenary.nvim') -- Required
Plug('nvim-telescope/telescope.nvim') -- Must
Plug('nvim-lualine/lualine.nvim') -- Must
Plug('nvim-tree/nvim-web-devicons') -- Must
Plug('saghen/blink.lib') -- Must
Plug('saghen/blink.cmp') -- Required
Plug('morhetz/gruvbox') -- Essential
Plug('vague2k/vague.nvim') -- Nice to have as a colorscheme
Plug("rebelot/kanagawa.nvim") -- Nice to have as a colorscheme
Plug('lukas-reineke/indent-blankline.nvim') -- Nice to have QOL
Plug('goolord/alpha-nvim') -- Essential
Plug('romgrk/barbar.nvim') -- Essential
Plug('MunifTanjim/nui.nvim') -- Required for noice.nvim
Plug('folke/noice.nvim')
Plug('ray-x/lsp_signature.nvim') -- Essential
Plug('windwp/nvim-autopairs') -- Essential
Plug('iamcco/markdown-preview.nvim', { ['do'] = function()
  vim.fn['mkdp#util#install']()
end, ['for'] = {'markdown', 'vim-plug'} }) -- Complicated

vim.call('plug#end')



require("config.mappings")
require("config.options")
require("lsp.lsp")
require("plugins.gruvbox")
require("plugins.blink")
require("plugins.lualine")
require("plugins.ibl")
require("plugins.alpha")
require("plugins.autopairs")
require("plugins.noice")
require("plugins.treesitter")
require("plugins.conform")

local theme = require("config.theme")

vim.keymap.set("n", "<leader>tt", theme.cycle)

vim.cmd("colorscheme gruvbox")
