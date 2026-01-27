require('twilight').setup({
    dimming = {
        alpha = 0.25,
        color = { "Normal", "#ffffff" },
        inactive = false,
    },
    context = 5,
    treesitter = true,
    expand  = {
        "function",
        "method",
        "fn",
        "table",
        "if_statement",
        "while_stmt",
    },
})
