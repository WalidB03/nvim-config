require("rose-pine").setup({
    variant = "dawn", -- auto, main, moon, or dawn
    dark_variant = "dawn", -- main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
    },

    styles = {
        transparency = true,
        bold = false,
        italic = false,
    },

    palette = {
        dawn = {
            text = "#c2dfeb",
            gold = "#2B704A",
            rose = "#b4637a",
            love = "#d7827e",
            base = "#191724",
            surface = "#1f1d2e",
            overlay = "#26233a",
            highlight_low = "#21202e",
            highlight_med = "#403d52",
            highlight_high = "#524f67"
        },
    },

    highlight_groups = {
        CursorLine = {bg = "#102040", inherit = false},
        StatusLine = {bg = "#102040", inherit = false},
        LineNr = {fg = "#204080", inherit = false},
        CursorLineNr = {fg = "#204080", inherit = false},
        Visual = {bg = "#102040", inherit = false },
        MatchParen = {fg = "#204080", bg = "none", inherit = false},
        WinSeparator = {fg = "#102040", inherit = false},
    },

    before_highlight = function(group, highlight)
        if highlight.underline then
            highlight.underline = false
        end

        if highlight.strikethrough then
            highlight.strikethrough = false
        end

        if highlight.undercurl then
            highlight.undercurl = false
            highlight.strikethrough = true
            highlight.italic = true
        end
    end,
})

vim.cmd("colorscheme rose-pine")

