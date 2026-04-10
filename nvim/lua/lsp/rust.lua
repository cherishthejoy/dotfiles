vim.lsp.config('rust_analyzer', {
    settings = {
        ["rust-analyzer"] = {
            diagnostics = { enable = true },
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
                noDefaultFeatures = true,
                allTargets = true,
            },
            procMacro = {
                enable = true,
            },
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

vim.lsp.enable('rust_analyzer')

