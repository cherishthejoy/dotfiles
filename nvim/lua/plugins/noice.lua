require("noice").setup({
    lsp = {
        -- fixes duplicate hover/signature with lspconfig
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    presets = {
        bottom_search = true,       -- classic / search at bottom
        command_palette = true,     -- cmdline + popupmenu together
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,      -- border on hover docs
    },
})
