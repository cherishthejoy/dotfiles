vim.lsp.config['zls'] = {
    cmd = {'zls'},
    filetypes = {'zig'},
    root_markers = {'build.zig'},
    settings = {
    	zls = {},
    },
    on_attach = function(client, bufnr)
        require('lsp_signature').on_attach({
            bind = true,
            handler_opts = {
                border = "rounded"
            },
        }, bufnr)
    end,
}
