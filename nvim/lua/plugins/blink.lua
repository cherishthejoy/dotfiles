require('blink.cmp').setup({
    keymap = {
        preset = 'default',
    },
    appearance = {
        nerd_font_variant = 'mono',
    },
    completion = {
        documentation = { auto_show = true }
    },
    fuzzy = {
        implementation = "lua",
    },
})
