require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath('data') .. '/site',
})

require("nvim-treesitter").install({
    'lua', 'typescript', 'tsx', 'astro', 'html', 'html_tags', 'css'
})
