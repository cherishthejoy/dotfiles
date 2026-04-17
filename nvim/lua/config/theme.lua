local M = {}

local themes = {
    "gruvbox",
    "vague",
    "kanagawa-wave",
    "kanagawa-dragon",
    "kanagawa-lotus",
}

local current = 1

function M.cycle()
    current = current % #themes + 1
    vim.cmd("colorscheme " .. themes[current])
end

return M
