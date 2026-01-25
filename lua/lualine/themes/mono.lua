local config = require("mono.config")
local palette = require("mono.palette")

local p = palette.get(config.options)
local grey = p.grey

local colors = {
    -- StatusLine background colors.
    color_bg1 = grey[1],
    color_bg2 = p.black,

    -- Mode colors.
    color1 = grey[22], -- Normal
    color2 = grey[20], -- Insert
    color3 = grey[18], -- Visual
    color4 = grey[16], -- Command
    color5 = grey[14], -- Replace

    -- Mode text color.
    color6 = p.black,

    -- StatusLineNC foreground.
    color7 = grey[17],

    -- Text colors.
    color8 = p.white,
    color9 = grey[22],
}

return {
    normal = {
        a = { bg = colors.color1, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color1 },
        c = { bg = colors.color_bg2, fg = colors.color9 },
    },
    insert = {
        a = { bg = colors.color2, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color2 },
    },
    visual = {
        a = { bg = colors.color3, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color3 },
    },
    command = {
        a = { bg = colors.color4, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color4 },
    },
    replace = {
        a = { bg = colors.color5, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color5 },
    },
    terminal = {
        a = { bg = colors.color2, fg = colors.color6 },
        b = { bg = colors.color_bg1, fg = colors.color2 },
    },
    inactive = {
        a = { bg = colors.color_bg1, fg = colors.color7 },
        b = { bg = colors.color_bg1, fg = colors.color7 },
        c = { bg = colors.color_bg2, fg = colors.color7 },
    },
}
