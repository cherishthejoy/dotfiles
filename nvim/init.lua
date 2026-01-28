local vim = vim
local Plug = vim.fn['plug#']
local uname = vim.loop.os_uname()
local is_macos = uname.sysname == "Darwin"
local is_linux = uname.sysname == "Linux"

vim.call('plug#begin')

vim.cmd [[hi @function.builtin.lua guifg=yellow]]

Plug('neovim/nvim-lspconfig')
Plug('saghen/blink.cmp')
Plug('sheerun/vim-polyglot')
Plug('nvim-treesitter/nvim-treesitter')
Plug('sainnhe/gruvbox-material')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('https://codeberg.org/ziglang/zig.vim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('goolord/alpha-nvim')
Plug('folke/zen-mode.nvim')
Plug('folke/twilight.nvim')
Plug('romgrk/barbar.nvim')
Plug('gelguy/wilder.nvim')
Plug('ray-x/lsp_signature.nvim')

vim.call('plug#end')

-- require("lsp.mason-zls")
require("config.mappings")
require("config.options")
require("plugins.colorscheme")
require("lsp.lua")
require("lsp.zls")
require("plugins.blink")
require("plugins.lualine")
require("plugins.ibl")
require("plugins.alpha")
require("plugins.twilight")
require("plugins.zen")
require("plugins.wilder")
-- require("plugins.copilotchat")
vim.lsp.enable('lua_ls')
vim.lsp.enable('zls')
