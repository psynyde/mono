local g = vim.g
local highlight = vim.api.nvim_set_hl

local palette = {
    none = "NONE",
    black = "#101010",
    white = "#ebebeb",
    bg = g.monoTransparent and "NONE" or "#101010",
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

local M = {}
M.palette = palette

M.style = function()
    local p = palette
    local grey = p.grey

    -------------------------------------------------------------------------
    -- Custom styling groups
    -------------------------------------------------------------------------

    highlight(0, "MonoVisual", { bg = grey[1] })
    highlight(0, "MonoWhite", { fg = p.white })
    for i = 0, 25 do
        highlight(0, "MonoGrey" .. i, { fg = grey[i] })
    end

    -- Misc helpers
    highlight(0, "MonoUnderline", { underline = true })
    highlight(0, "MonoNoCombine", { nocombine = true })

    -------------------------------------------------------------------------
    -- Standard styling
    -------------------------------------------------------------------------

    -- Specify the colors used by the inbuilt terminal
    if g.monoTerminalColors then
        g.terminal_color_0 = p.term_black
        g.terminal_color_1 = p.term_red
        g.terminal_color_2 = p.term_green
        g.terminal_color_3 = p.term_yellow
        g.terminal_color_4 = p.term_blue
        g.terminal_color_5 = p.term_magenta
        g.terminal_color_6 = p.term_cyan
        g.terminal_color_7 = p.term_white
        g.terminal_color_8 = p.term_bright_black
        g.terminal_color_9 = p.term_bright_red
        g.terminal_color_10 = p.term_bright_green
        g.terminal_color_11 = p.term_bright_yellow
        g.terminal_color_12 = p.term_bright_blue
        g.terminal_color_13 = p.term_bright_magenta
        g.terminal_color_14 = p.term_bright_cyan
        g.terminal_color_15 = p.term_bright_white
    end

    -- Background and text
    highlight(0, "Normal", { bg = p.bg, fg = grey[22] })

    -- Color of mode text, -- INSERT --
    highlight(0, "ModeMsg", { fg = grey[19] })

    -- Comments
    if g.monoItalics then
        highlight(0, "Comment", { fg = grey[6], italic = true })
        highlight(0, "SpecialComment", { fg = grey[6], italic = true })
        highlight(0, "Todo", { fg = grey[19], italic = true })
        highlight(0, "Type", { fg = grey[20], italic = true })
        highlight(0, "StorageClass", { fg = grey[16], italic = true })
        highlight(0, "PreProc", { fg = grey[16], italic = true })
        highlight(0, "Label", { fg = grey[17], italic = true })
        highlight(0, "Exception", { fg = grey[14], italic = true })
        highlight(0, "Keyword", { fg = grey[16], italic = true })
        highlight(0, "Repeat", { fg = grey[16], italic = true })
    else
        highlight(0, "Comment", { fg = grey[6] })
        highlight(0, "SpecialComment", { fg = grey[6] })
        highlight(0, "Todo", { fg = grey[19] })
        highlight(0, "Type", { fg = grey[20] })
        highlight(0, "StorageClass", { fg = grey[16] })
        highlight(0, "PreProc", { fg = grey[16] })
        highlight(0, "Label", { fg = grey[17] })
        highlight(0, "Exception", { fg = grey[14] })
        highlight(0, "Keyword", { fg = grey[16] })
        highlight(0, "Repeat", { fg = grey[16] })
    end

    -- Functions
    highlight(0, "Function", { fg = grey[17] })

    -- Strings
    highlight(0, "String", { fg = grey[19] })

    -- Booleans
    highlight(0, "Boolean", { fg = grey[19] })

    -- Identifiers
    highlight(0, "Identifier", { fg = grey[17] })

    -- Color of titles
    highlight(0, "Title", { fg = grey[14] })

    -- const, static
    highlight(0, "StorageClass", { fg = grey[16] })

    -- void, intptr_t
    highlight(0, "Type", { fg = grey[20] })

    -- Numbers
    highlight(0, "Constant", { fg = grey[19] })

    -- Character constants
    highlight(0, "Character", { fg = grey[19] })

    -- Exceptions
    highlight(0, "Exception", { fg = grey[14] })

    -- ifdef/endif
    highlight(0, "PreProc", { fg = grey[16] })

    -- case in switch statement
    highlight(0, "Label", { fg = grey[17] })

    -- end-of-line '$', end-of-file '~'
    highlight(0, "NonText", { fg = grey[5] })

    -- sizeof
    highlight(0, "Operator", { fg = grey[22] })

    -- for, while
    highlight(0, "Repeat", { fg = grey[16] })

    -- Search
    highlight(0, "Search", { bg = grey[1], fg = grey[19] })
    highlight(0, "CurSearch", { bg = grey[18], fg = p.black })
    highlight(0, "IncSearch", { bg = grey[22], fg = p.black })

    -- '\n' sequences
    highlight(0, "Special", { fg = grey[18] })

    -- Line numbers
    highlight(0, "LineNr", { fg = grey[3] })
    highlight(0, "CursorLineNr", { fg = grey[10] })

    -- Cursor line
    highlight(0, "CursorLine", { bg = grey.ui })
    highlight(0, "CursorColumn", { bg = grey.ui })

    -- Visual selection
    highlight(0, "Visual", { bg = grey[1] })

    -- Status line
    highlight(0, "StatusLine", { bg = p.black, fg = grey[19] })
    highlight(0, "StatusLineNC", { bg = p.black, fg = grey[9] })

    -- Tab line
    highlight(0, "TabLine", { bg = p.black, fg = grey[9] })
    highlight(0, "TabLineFill", { bg = p.black })
    highlight(0, "TabLineSel", { bg = p.black, fg = grey[23] })

    -- Fold column
    highlight(0, "Folded", { bg = grey.ui, fg = grey[19] })
    highlight(0, "FoldColumn", { bg = grey.ui, fg = grey[3] })

    -- Sign column
    highlight(0, "SignColumn", { bg = p.black })

    -- Vert split
    highlight(0, "VertSplit", { fg = grey[0] })

    -- Color column
    highlight(0, "ColorColumn", { bg = grey.ui })

    -- Conceal
    highlight(0, "Conceal", { fg = grey[19] })

    -- Diff
    -- TODO: needs to be tested more
    highlight(0, "DiffAdd", { bg = grey.ui, fg = grey[23] })
    highlight(0, "DiffChange", { bg = grey.ui, fg = grey[16] })
    highlight(0, "DiffDelete", { bg = grey.ui, fg = grey[14] })
    highlight(0, "DiffText", { bg = grey.ui, fg = grey[22] })

    -- GitSigns
    highlight(0, "Added", { fg = grey[17] })
    highlight(0, "Changed", { fg = grey[17] })
    highlight(0, "Removed", { fg = p.diag_error })

    -- Spell
    if g.monoUndercurl then
        highlight(0, "SpellBad", { undercurl = true, sp = grey[14] })
        highlight(0, "SpellCap", { undercurl = true, sp = grey[14] })
        highlight(0, "SpellLocal", { undercurl = true, sp = grey[14] })
        highlight(0, "SpellRare", { undercurl = true, sp = grey[14] })
    else
        highlight(0, "SpellBad", { underline = true, sp = grey[14] })
        highlight(0, "SpellCap", { underline = true, sp = grey[14] })
        highlight(0, "SpellLocal", { underline = true, sp = grey[14] })
        highlight(0, "SpellRare", { underline = true, sp = grey[14] })
    end

    -- Pmenu
    highlight(0, "Pmenu", { bg = p.black, fg = grey[19] })
    highlight(0, "PmenuSel", { bg = grey[1], fg = grey[23] })
    highlight(0, "PmenuSbar", { bg = grey[1] })
    highlight(0, "PmenuThumb", { bg = grey[3] })

    -- Wild menu
    highlight(0, "WildMenu", { bg = grey[1], fg = grey[23] })

    -- Error messages
    highlight(0, "ErrorMsg", { fg = grey[14] })
    highlight(0, "WarningMsg", { fg = grey[13] })
    highlight(0, "MoreMsg", { fg = grey[19] })
    highlight(0, "Question", { fg = grey[19] })

    -- Match parenthesis
    highlight(0, "MatchParen", { bg = grey.ui })

    -- Cursor
    highlight(0, "Cursor", { fg = grey[22] })
    highlight(0, "lCursor", { fg = grey[22] })
    highlight(0, "CursorIM", { fg = grey[22] })

    -- Special keys
    highlight(0, "SpecialKey", { fg = grey[9] })

    -- Directory
    highlight(0, "Directory", { fg = grey[19] })

    -- Error
    highlight(0, "Error", { fg = grey[14] })

    -- Underlined
    highlight(0, "Underlined", { underline = true, fg = grey[22] })

    -- Ignore
    highlight(0, "Ignore", { fg = grey[3] })

    -- Quick fix line
    highlight(0, "qfLineNr", { fg = grey[19] })

    -- Quick fix list
    highlight(0, "qfFileName", { fg = grey[19] })

    -- Keywords (e.g. local, return, function, if, else)
    highlight(0, "Keyword", { fg = grey[16] })

    -- Parentheses and quotes
    highlight(0, "Delimiter", { fg = grey[22] })

    -- Treesitter @variable
    highlight(0, "@variable", { fg = grey[17] })

    -- Treesitter @variable.member
    highlight(0, "@variable.member", { fg = grey[22] })

    -- Treesitter @property
    highlight(0, "@property", { fg = grey[22] })

    highlight(0, "@string.escape", { fg = grey[16] })

    -- Treesitter @keyword.operator
    highlight(0, "@keyword.operator", { link = "Operator" })

    -- Treesitter context
    highlight(0, "TreesitterContext", { bg = grey[1] })

    -- Treesitter context separator
    highlight(0, "TreesitterContextSeparator", { bg = grey[1] })

    -- Trouble highlights
    highlight(0, "TroubleNormal", { link = "Normal" })

    -- Lazy highlights
    highlight(0, "LazyNormal", { link = "Normal" })

    -- Floating window background
    highlight(0, "NormalFloat", { bg = grey.ui, fg = grey[22] })

    -- Winbar and WinbarNC (window bar)
    -- TODO: untested
    highlight(0, "Winbar", { bg = grey.ui, fg = grey[19] })
    highlight(0, "WinbarNC", { bg = grey.ui, fg = grey[9] })

    -- Diagnostic highlights
    highlight(0, "DiagnosticOk", { fg = p.diag_ok })
    highlight(0, "DiagnosticHint", { fg = grey[17] })
    highlight(0, "DiagnosticInfo", { fg = grey[17] })
    highlight(0, "DiagnosticWarn", { fg = p.diag_warn })
    highlight(0, "DiagnosticError", { fg = p.diag_error })
    highlight(0, "DiagnosticDeprecated", { fg = p.diag_warn })
    highlight(0, "DiagnosticUnnecessary", { fg = grey[9] })

    -- Diagnostic virtual text
    highlight(0, "DiagnosticVirtualTextOk", { fg = p.diag_ok })
    highlight(0, "DiagnosticVirtualTextHint", { fg = grey[17] })
    highlight(0, "DiagnosticVirtualTextInfo", { fg = grey[17] })
    highlight(0, "DiagnosticVirtualTextWarn", { fg = p.diag_warn })
    highlight(0, "DiagnosticVirtualTextError", { fg = p.diag_error })

    -- Diagnostic signs
    highlight(0, "DiagnosticSignOk", { fg = p.diag_ok })
    highlight(0, "DiagnosticSignInfo", { fg = grey[17] })
    highlight(0, "DiagnosticSignHint", { fg = grey[17] })
    highlight(0, "DiagnosticSignWarn", { fg = p.diag_warn })
    highlight(0, "DiagnosticSignError", { fg = p.diag_error })
    highlight(0, "DiagnosticSignDeprecated", { fg = p.diag_warn })

    -- Diagnostic underlines
    if g.monoUndercurl then
        highlight(0, "DiagnosticUnderlineWarn", { sp = p.diag_warn, undercurl = true })
        highlight(0, "DiagnosticUnderlineInfo", { sp = grey[17], undercurl = true })
        highlight(0, "DiagnosticUnderlineHint", { sp = grey[17], undercurl = true })
        highlight(0, "DiagnosticUnderlineError", { sp = p.diag_error, undercurl = true })
    else
        highlight(0, "DiagnosticUnderlineWarn", { sp = p.diag_warn, underline = true })
        highlight(0, "DiagnosticUnderlineInfo", { sp = grey[17], underline = true })
        highlight(0, "DiagnosticUnderlineHint", { sp = grey[17], underline = true })
        highlight(0, "DiagnosticUnderlineError", { sp = p.diag_error, underline = true })
    end

    -- LSP semantic tokens
    highlight(0, "@lsp.type.boolean", { link = "@boolean" })
    highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
    highlight(0, "@lsp.type.comment", { link = "@comment" })
    highlight(0, "@lsp.type.enum", { link = "@type" })
    highlight(0, "@lsp.type.enumMember", { link = "@constant" })
    highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
    highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
    highlight(0, "@lsp.type.interface", { link = "@function.builtin" })
    highlight(0, "@lsp.type.keyword", { link = "@keyword" })
    highlight(0, "@lsp.type.namespace", { link = "@module" })
    highlight(0, "@lsp.type.number", { link = "@number" })
    highlight(0, "@lsp.type.operator", { link = "@operator" })
    highlight(0, "@lsp.type.parameter", { link = "@parameter" })
    highlight(0, "@lsp.type.property", { link = "@property" })
    highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
    highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
    highlight(0, "@lsp.type.unresolvedReference", { link = "@error" })
    highlight(0, "@lsp.type.variable", {}) -- Using treesitter styles for regular variables
    highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type.builtin" })
    highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
    highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
    highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
    highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword.coroutine" })
    highlight(0, "@lsp.typemod.macro.defaultLibrary", { link = "@function.builtin" })
    highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
    highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
    highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
    highlight(0, "@lsp.typemod.type.defaultLibrary", { link = "@type.builtin" })
    highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
    highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
end

return M
