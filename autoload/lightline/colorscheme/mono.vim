" mono color scheme for lightline (github.com/bluz71/vim-mono-colors).
"
" License:  MIT (https://opensource.org/licenses/MIT)

let s:palette = {
\ 'none': ['NONE', 'NONE'],
\ 'black': ['#101010', 232],
\ 'white': ['#ebebeb', 255],
\ 'dark': ['#1d1d1d', 234],
\ 'term_red': ['#e64a6b', 167],
\ 'term_green': ['#789978', 108],
\ 'term_yellow': ['#f0c674', 221],
\ 'term_blue': ['#7788aa', 103],
\ 'term_magenta': ['#b86cd4', 176],
\ 'term_cyan': ['#6f8595', 102],
\ 'term_white': ['#deeeed', 253],
\ 'term_bright_black': ['#2a2a2a', 235],
\ 'term_bright_red': ['#e64a6b', 167],
\ 'term_bright_green': ['#789978', 108],
\ 'term_bright_yellow': ['#f0c674', 221],
\ 'term_bright_blue': ['#7788aa', 103],
\ 'term_bright_magenta': ['#b86cd4', 176],
\ 'term_bright_cyan': ['#6f8595', 102],
\ 'term_bright_white': ['#ffffff', 255],
\ 'diag_ok': ['#789978', 108],
\ 'diag_error': ['#e64a6b', 167],
\ 'diag_warn': ['#e69b7b', 173],
\ 'grey': [
\   ['#191919', 233], ['#1d1d1d', 234], ['#222222', 235], ['#262626', 235],
\   ['#2b2b2b', 236], ['#323232', 236], ['#383838', 237], ['#3c3c3c', 237],
\   ['#404040', 238], ['#454545', 238], ['#494949', 239], ['#4d4d4d', 239],
\   ['#525252', 239], ['#5f5f5f', 240], ['#626262', 241], ['#686868', 242],
\   ['#6c6c6c', 242], ['#707070', 243], ['#7e7e7e', 244], ['#8a8a8a', 245],
\   ['#939393', 246], ['#979797', 246], ['#aaaaaa', 248], ['#b5b5b5', 249],
\   ['#bfbfbf', 250], ['#e2e2e2', 253]
\ ],
\ 'ui': ['#151515', 233]
\}

" @variable.member color: #aaaaaa
let s:variable_member = ['#aaaaaa', 248]

if exists('g:lightline')
    let s:p = {
        \ 'normal': {},
        \ 'insert': {},
        \ 'visual': {},
        \ 'command': {},
        \ 'replace': {},
        \ 'inactive': {},
        \ 'tabline': {}}

    let s:p.normal.left     = [[s:palette.dark, s:palette.term_blue], [s:palette.white, s:palette.black]]
    let s:p.normal.middle   = [[s:palette.white, s:palette.black]]
    let s:p.normal.right    = [[s:palette.white, s:palette.black], [s:palette.term_blue, s:palette.black]]
    let s:p.normal.warning  = [[s:palette.white, s:palette.black]]
    let s:p.normal.error    = [[s:palette.diag_error, s:palette.black]]

    let s:p.insert.left     = [[s:palette.dark, s:palette.term_green], [s:palette.white, s:palette.black]]
    let s:p.insert.right    = [[s:palette.white, s:palette.black], [s:palette.term_green, s:palette.black]]
    let s:p.visual.left     = [[s:palette.dark, s:palette.term_magenta], [s:palette.white, s:palette.black]]
    let s:p.visual.right    = [[s:palette.white, s:palette.black], [s:palette.term_magenta, s:palette.black]]
    let s:p.command.left    = [[s:palette.dark, s:palette.term_yellow], [s:palette.white, s:palette.black]]
    let s:p.command.right   = [[s:palette.white, s:palette.black], [s:palette.term_yellow, s:palette.black]]
    let s:p.replace.left    = [[s:palette.dark, s:palette.diag_error], [s:palette.white, s:palette.black]]
    let s:p.replace.right   = [[s:palette.white, s:palette.black], [s:palette.diag_error, s:palette.black]]

    let s:p.inactive.left   = [[s:palette.grey[17], s:palette.black], [s:palette.grey[17], s:palette.black]]
    let s:p.inactive.middle = [[s:palette.grey[17], s:palette.black]]
    let s:p.inactive.right  = [[s:palette.grey[17], s:palette.black], [s:palette.grey[17], s:palette.black]]

    let s:p.tabline.left    = [[s:palette.grey[17], s:palette.black]]
    let s:p.tabline.middle  = [[s:palette.grey[17], s:palette.black]]
    let s:p.tabline.right   = [[s:palette.grey[17], s:palette.black]]
    let s:p.tabline.tabsel  = [[s:palette.term_blue, s:palette.black]]

    let g:lightline#colorscheme#mono#palette = lightline#colorscheme#flatten(s:p)
endif 