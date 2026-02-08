require("vague").setup({
    transparent = false,
    bold = true,
    italic = true,
    style = {
        boolean = "bold",
        error = "bold",
        comments = "italic",
        headings = "bold",
        strings = "italic",

        keyword_return = "italic",

        builtin_constants = "bold",
        builtin_functions = "none",
        builtin_types = "bold",
        builtin_variables = "none",
    },
    plugins = {
        cmp = {
            match = "bold",
            match_fuzzy = "bold",
        },
        lsp = {
            diagnostic_error = "bold",
            diagnostic_hint = "none",
            diagnostic_info = "italic",
            diagnostic_warn = "bold",
        },
        telescope = {
            match = "bold",
        },
    },
})
