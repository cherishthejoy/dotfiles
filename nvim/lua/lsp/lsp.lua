require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls",
    },
})

local lspconfig = require("lspconfig")

local servers = { "lua_ls", "rust_analyzer", "zls", "ts_ls" }

-- require("mason-lspconfig").setup_handlers({
--     function(server_name)
--         lspconfig[server_name].setup({})
--     end,
-- })
