
vim.lsp.config('rust_analyzer', {
    settings = {
        ["rust-analyzer"] = {
            diagnostics = { enable = true },
        },
    },
    on_attach = function(client, bufnr)
        require('lsp_signature').on_attach({
            bind = true,
            handler_opts = {
                border = "rounded"
            },
        }, bufnr)
    end,
})
    
