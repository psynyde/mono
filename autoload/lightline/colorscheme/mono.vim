" mono color scheme for lightline (github.com/bluz71/vim-mono-colors).
"
" License:  MIT (https://opensource.org/licenses/MIT)

let s:palette = {
\ 'white': ['#ebebeb', 255],
\ 'grey': ['#aaaaaa', 248],
\ 'black': ['#101010', 232],
\ 'dark': ['#1d1d1d', 234],
\ 'blue': ['#80a0ff', 4],
\ 'emerald': ['#36c692', 10],
\ 'purple': ['#ae81ff', 13],
\ 'yellow': ['#e3c78a', 3],
\ 'crimson': ['#ff5189', 9]
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

    let s:p.normal.left     = [[s:palette.dark, s:palette.blue], [s:palette.white, s:palette.black]]
    let s:p.normal.middle   = [[s:palette.white, s:palette.black]]
    let s:p.normal.right    = [[s:palette.white, s:palette.black], [s:palette.blue, s:palette.black]]
    let s:p.normal.warning  = [[s:palette.white, s:palette.black]]
    let s:p.normal.error    = [[s:palette.crimson, s:palette.black]]

    let s:p.insert.left     = [[s:palette.dark, s:palette.emerald], [s:palette.white, s:palette.black]]
    let s:p.insert.right    = [[s:palette.white, s:palette.black], [s:palette.emerald, s:palette.black]]
    let s:p.visual.left     = [[s:palette.dark, s:palette.purple], [s:palette.white, s:palette.black]]
    let s:p.visual.right    = [[s:palette.white, s:palette.black], [s:palette.purple, s:palette.black]]
    let s:p.command.left    = [[s:palette.dark, s:palette.yellow], [s:palette.white, s:palette.black]]
    let s:p.command.right   = [[s:palette.white, s:palette.black], [s:palette.yellow, s:palette.black]]
    let s:p.replace.left    = [[s:palette.dark, s:palette.crimson], [s:palette.white, s:palette.black]]
    let s:p.replace.right   = [[s:palette.white, s:palette.black], [s:palette.crimson, s:palette.black]]

    let s:p.inactive.left   = [[s:palette.grey, s:palette.black], [s:palette.grey, s:palette.black]]
    let s:p.inactive.middle = [[s:palette.grey, s:palette.black]]
    let s:p.inactive.right  = [[s:palette.grey, s:palette.black], [s:palette.grey, s:palette.black]]

    let s:p.tabline.left    = [[s:palette.grey, s:palette.black]]
    let s:p.tabline.middle  = [[s:palette.grey, s:palette.black]]
    let s:p.tabline.right   = [[s:palette.grey, s:palette.black]]
    let s:p.tabline.tabsel  = [[s:palette.blue, s:palette.black]]

    let g:lightline#colorscheme#mono#palette = lightline#colorscheme#flatten(s:p)
endif 