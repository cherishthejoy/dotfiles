vim.lsp.config('ts_ls', {
    on_attach = function(client, bufnr)
        require('lsp_signature').on_attach({
            bind = true,
            handler_opts = {
                border = "rounded"
            },
        }, bufnr)
    end,
})

vim.lsp.enable('ts_ls')
