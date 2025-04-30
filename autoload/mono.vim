" Dark Vim/Neovim colorscheme.
"
" URL:      github.com/bluz71/vim-mono-colors
" License:  MIT (https://opensource.org/licenses/MIT)

function! mono#Style()
    " Clear highlights and reset syntax.
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif

    " Set colorscheme name.
    let g:colors_name = 'mono'

    " Define theme options.
    let g:monoItalics = get(g:, 'monoItalics', v:true)
    let g:monoTerminalColors = get(g:, 'monoTerminalColors', v:true)
    let g:monoTransparent = get(g:, 'monoTransparent', v:false)
    let g:monoUndercurl = get(g:, 'monoUndercurl', v:true)

    " Background and foreground
    let s:palette = {
    \ 'none': 'NONE',
    \ 'black': '#101010',
    \ 'white': '#ebebeb',
    \ 'bg': get(g:, 'monoTransparent', 0) ? 'NONE' : '#101010',
    \ 'term_black': '#101010',
    \ 'term_red': '#e64a6b',
    \ 'term_green': '#789978',
    \ 'term_yellow': '#f0c674',
    \ 'term_blue': '#7788aa',
    \ 'term_magenta': '#b86cd4',
    \ 'term_cyan': '#6f8595',
    \ 'term_white': '#deeeed',
    \ 'term_bright_black': '#2a2a2a',
    \ 'term_bright_red': '#e64a6b',
    \ 'term_bright_green': '#789978',
    \ 'term_bright_yellow': '#f0c674',
    \ 'term_bright_blue': '#7788aa',
    \ 'term_bright_magenta': '#b86cd4',
    \ 'term_bright_cyan': '#6f8595',
    \ 'term_bright_white': '#ffffff',
    \ 'diag_ok': '#789978',
    \ 'diag_error': '#e64a6b',
    \ 'diag_warn': '#e69b7b',
    \ 'grey': [
    \   '#191919', '#1d1d1d', '#222222', '#262626', '#2b2b2b',
    \   '#323232', '#383838', '#3c3c3c', '#404040', '#454545',
    \   '#494949', '#4d4d4d', '#525252', '#5f5f5f', '#626262',
    \   '#686868', '#6c6c6c', '#707070', '#7e7e7e', '#8a8a8a',
    \   '#939393', '#979797', '#aaaaaa', '#b5b5b5', '#bfbfbf',
    \   '#e2e2e2'
    \ ],
    \ 'ui': '#151515'
    \}
    let s:g = s:palette.grey

    " Specify the colors used by the inbuilt terminal
    if g:monoTerminalColors
        let g:terminal_color_0 = s:palette.term_black
        let g:terminal_color_1 = s:palette.term_red
        let g:terminal_color_2 = s:palette.term_green
        let g:terminal_color_3 = s:palette.term_yellow
        let g:terminal_color_4 = s:palette.term_blue
        let g:terminal_color_5 = s:palette.term_magenta
        let g:terminal_color_6 = s:palette.term_cyan
        let g:terminal_color_7 = s:palette.term_white
        let g:terminal_color_8 = s:palette.term_bright_black
        let g:terminal_color_9 = s:palette.term_bright_red
        let g:terminal_color_10 = s:palette.term_bright_green
        let g:terminal_color_11 = s:palette.term_bright_yellow
        let g:terminal_color_12 = s:palette.term_bright_blue
        let g:terminal_color_13 = s:palette.term_bright_magenta
        let g:terminal_color_14 = s:palette.term_bright_cyan
        let g:terminal_color_15 = s:palette.term_bright_white
    endif

    " Background and text
    execute 'highlight Normal guibg=' . s:palette.bg . ' guifg=' . s:g[22]

    " Color of mode text, -- INSERT --
    execute 'highlight ModeMsg guifg=' . s:g[19]

    " Comments
    if g:monoItalics
        execute 'highlight Comment guifg=' . s:g[6] . ' gui=italic'
    else
        execute 'highlight Comment guifg=' . s:g[6]
    endif

    " Functions
    execute 'highlight Function guifg=' . s:g[17]

    " Strings
    execute 'highlight String guifg=' . s:g[19]

    " Booleans
    execute 'highlight Boolean guifg=' . s:g[19]

    " Identifiers
    execute 'highlight Identifier guifg=' . s:g[17]

    " Color of titles
    execute 'highlight Title guifg=' . s:g[14]

    " const, static
    execute 'highlight StorageClass guifg=' . s:g[16]

    " void, intptr_t
    execute 'highlight Type guifg=' . s:g[20]

    " Numbers
    execute 'highlight Constant guifg=' . s:g[19]

    " Character constants
    execute 'highlight Character guifg=' . s:g[19]

    " Exceptions
    execute 'highlight Exception guifg=' . s:g[14]

    " ifdef/endif
    execute 'highlight PreProc guifg=' . s:g[16]

    " case in switch statement
    execute 'highlight Label guifg=' . s:g[17]

    " end-of-line '$', end-of-file '~'
    execute 'highlight NonText guifg=' . s:g[5]

    " sizeof
    execute 'highlight Operator guifg=' . s:g[22]

    " for, while
    execute 'highlight Repeat guifg=' . s:g[16]

    " Search
    execute 'highlight Search guibg=' . s:g[1] . ' guifg=' . s:g[19]
    execute 'highlight CurSearch guibg=' . s:g[18] . ' guifg=' . s:palette.black
    execute 'highlight IncSearch guibg=' . s:g[22] . ' guifg=' . s:palette.black

    " '\n' sequences
    execute 'highlight Special guifg=' . s:g[18]

    " Line numbers
    execute 'highlight LineNr guifg=' . s:g[3]
    execute 'highlight CursorLineNr guifg=' . s:g[10]

    " Cursor line
    execute 'highlight CursorLine guibg=' . s:palette.ui
    execute 'highlight CursorColumn guibg=' . s:palette.ui

    " Visual selection
    execute 'highlight Visual guibg=' . s:g[1]

    " Status line
    execute 'highlight StatusLine guibg=' . s:palette.black . ' guifg=' . s:g[19]
    execute 'highlight StatusLineNC guibg=' . s:palette.black . ' guifg=' . s:g[9]

    " Tab line
    execute 'highlight TabLine guibg=' . s:palette.black . ' guifg=' . s:g[9]
    execute 'highlight TabLineFill guibg=' . s:palette.black
    execute 'highlight TabLineSel guibg=' . s:palette.black . ' guifg=' . s:g[23]

    " Fold column
    execute 'highlight Folded guibg=' . s:palette.black . ' guifg=' . s:g[19]
    execute 'highlight FoldColumn guibg=' . s:palette.black . ' guifg=' . s:g[3]

    " Sign column
    execute 'highlight SignColumn guibg=' . s:palette.black

    " Vert split
    execute 'highlight VertSplit guifg=' . s:g[0]

    " Color column
    execute 'highlight ColorColumn guibg=' . s:palette.ui

    " Conceal
    execute 'highlight Conceal guifg=' . s:g[19]

    " Diff
    execute 'highlight DiffAdd guibg=' . s:palette.ui . ' guifg=' . s:g[23]
    execute 'highlight DiffChange guibg=' . s:palette.ui . ' guifg=' . s:g[16]
    execute 'highlight DiffDelete guibg=' . s:palette.ui . ' guifg=' . s:g[14]
    execute 'highlight DiffText guibg=' . s:palette.ui . ' guifg=' . s:g[22]

    " Spell
    if g:monoUndercurl
        execute 'highlight SpellBad gui=undercurl guisp=' . s:g[14]
        execute 'highlight SpellCap gui=undercurl guisp=' . s:g[14]
        execute 'highlight SpellLocal gui=undercurl guisp=' . s:g[14]
        execute 'highlight SpellRare gui=undercurl guisp=' . s:g[14]
    else
        execute 'highlight SpellBad gui=underline guisp=' . s:g[14]
        execute 'highlight SpellCap gui=underline guisp=' . s:g[14]
        execute 'highlight SpellLocal gui=underline guisp=' . s:g[14]
        execute 'highlight SpellRare gui=underline guisp=' . s:g[14]
    endif

    " Pmenu
    execute 'highlight Pmenu guibg=' . s:palette.black . ' guifg=' . s:g[19]
    execute 'highlight PmenuSel guibg=' . s:g[1] . ' guifg=' . s:g[23]
    execute 'highlight PmenuSbar guibg=' . s:g[1]
    execute 'highlight PmenuThumb guibg=' . s:g[3]

    " Wild menu
    execute 'highlight WildMenu guibg=' . s:g[1] . ' guifg=' . s:g[23]

    " Error messages
    execute 'highlight ErrorMsg guifg=' . s:g[14]
    execute 'highlight WarningMsg guifg=' . s:g[13]
    execute 'highlight MoreMsg guifg=' . s:g[19]
    execute 'highlight Question guifg=' . s:g[19]

    " Match parenthesis
    execute 'highlight MatchParen guibg=' . s:g[1]

    " Cursor
    execute 'highlight Cursor guifg=' . s:g[22]
    execute 'highlight lCursor guifg=' . s:g[22]
    execute 'highlight CursorIM guifg=' . s:g[22]

    " Special keys
    execute 'highlight SpecialKey guifg=' . s:g[9]

    " Directory
    execute 'highlight Directory guifg=' . s:g[19]

    " Error
    execute 'highlight Error guifg=' . s:g[14]

    " Underlined
    execute 'highlight Underlined gui=underline guifg=' . s:g[22]

    " Ignore
    execute 'highlight Ignore guifg=' . s:g[3]

    " Todo
    execute 'highlight Todo guifg=' . s:g[19]

    " Quick fix line
    execute 'highlight qfLineNr guifg=' . s:g[19]

    " Quick fix list
    execute 'highlight qfFileName guifg=' . s:g[19]

    " Keywords (e.g. local, return, function, if, else)
    execute 'highlight Keyword guifg=' . s:g[16]

    " Parentheses and quotes
    execute 'highlight Delimiter guifg=' . s:g[22]
endfunction
