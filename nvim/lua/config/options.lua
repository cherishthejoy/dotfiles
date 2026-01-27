vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.cmd('filetype plugin indent on')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Keep visual selection after indenting
vim.api.nvim_set_keymap('x', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<cmd>w<cr>", {
    desc = "Save file",
})

vim.opt.list = true
vim.opt.listchars = {
    tab = "..",
}
vim.opt.clipboard = "unnamedplus"

vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full"}

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.filetype.plugin = true
vim.opt.filetype.indent = true
vim.opt.termguicolors = true
