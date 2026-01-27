require('CopilotChat').setup({
    window = {
        width = 0.4,
        title = 'Claude',

    },
    headers = {
        user = 'ixsterne',
        assistant = 'claude',
    },
    separator = '━━',
    auto_insert_mode = false,
})

vim.keymap.set('n', '<leader>cq', ':CopilotChatToggle<CR>', { desc = 'Toggle Copilot Chat' })
