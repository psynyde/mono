
local M = {}

function M.get(config)
    return {
        none = "NONE",
        black = "#101010",
        white = "#ebebeb",
        bg = config.transparent and "NONE" or "#101010",
        -- Terminal colors
        term_black = "#101010",
        term_red = "#e64a6b",
        term_green = "#789978",
        term_yellow = "#f0c674",
        term_blue = "#7788aa",
        term_magenta = "#b86cd4",
        term_cyan = "#6f8595",
        term_white = "#deeeed",
        term_bright_black = "#2a2a2a",
        term_bright_red = "#e64a6b",
        term_bright_green = "#789978",
        term_bright_yellow = "#f0c674",
        term_bright_blue = "#7788aa",
        term_bright_magenta = "#b86cd4",
        term_bright_cyan = "#6f8595",
        term_bright_white = "#ffffff",
        -- Diagnostic colors
        diag_ok = "#789978",
        diag_error = "#e64a6b",
        diag_warn = "#e69b7b",

        grey = {
            [0] = "#191919",
            [1] = "#1d1d1d",
            [2] = "#222222",
            [3] = "#262626",
            [4] = "#2b2b2b",
            [5] = "#323232",
            [6] = "#383838",
            [7] = "#3c3c3c",
            [8] = "#404040",
            [9] = "#454545",
            [10] = "#494949",
            [11] = "#4d4d4d",
            [12] = "#525252",
            [13] = "#5f5f5f",
            [14] = "#626262",
            [15] = "#686868",
            [16] = "#6c6c6c",
            [17] = "#707070",
            [18] = "#7e7e7e",
            [19] = "#8a8a8a",
            [20] = "#939393",
            [21] = "#979797",
            [22] = "#aaaaaa",
            [23] = "#b5b5b5",
            [24] = "#bfbfbf",
            [25] = "#e2e2e2",
            -- UI specific colors
            ui = "#151515",
        },
    }
end

return M
