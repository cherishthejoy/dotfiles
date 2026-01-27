require('zen-mode').setup({
    window = {
        backdrop = 0.95,
        width = 100, -- width of the Zen window
        height = 1, -- height of the Zen window
        options = {signcolumn = "no", number = false, cursorline = false},
    },
    plugins = {
        options = {enabled = true, ruler = false, showcmd = false},
        twilight = {enabled = true},
        alacritty = {enabled = false, font = "14"},
    },
})


