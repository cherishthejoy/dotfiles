local wilder = require('wilder')
wilder.setup({
    modes = {':', '/', '?'},
    next_key = '<Tab>',
    previous_key = '<S-Tab>',
})

wilder.set_option('renderer', wilder.popupmenu_renderer({
    pumblend = 20,
    highlighter = wilder.basic_highlighter(),
    left = {' ', wilder.popupmenu_devicons()},
}))
