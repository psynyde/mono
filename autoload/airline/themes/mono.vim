" mono color scheme for airline (https://github.com/bluz71/vim-mono-colors).
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

let s:normal1      = [s:palette.dark[0],  s:palette.blue[0],    s:palette.dark[1],  s:palette.blue[1]]
let s:normal2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:normal3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:inactive1    = [s:palette.grey[0],  s:palette.black[0],  s:palette.grey[1],  s:palette.black[1]]
let s:inactive2    = [s:palette.grey[0],  s:palette.black[0],  s:palette.grey[1],  s:palette.black[1]]
let s:inactive3    = [s:palette.grey[0],  s:palette.black[0],  s:palette.grey[1],  s:palette.black[1]]
let s:insert1      = [s:palette.dark[0],  s:palette.emerald[0], s:palette.dark[1],  s:palette.emerald[1]]
let s:insert2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:insert3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:visual1      = [s:palette.dark[0],  s:palette.purple[0],  s:palette.dark[1],  s:palette.purple[1]]
let s:visual2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:visual3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:commandline1 = [s:palette.dark[0],  s:palette.yellow[0],  s:palette.dark[1],  s:palette.yellow[1]]
let s:commandline2 = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:commandline3 = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:replace1     = [s:palette.dark[0],  s:palette.crimson[0], s:palette.dark[1],  s:palette.crimson[1]]
let s:replace2     = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:replace3     = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:warning      = [s:palette.yellow[0],  s:palette.black[0],  s:palette.yellow[1],  s:palette.black[1]]
let s:error        = [s:palette.crimson[0], s:palette.black[0],  s:palette.crimson[1], s:palette.black[1]]

if exists('g:airline_theme')
    let g:airline#themes#mono#palette = {}
    let g:airline#themes#mono#palette = {}

    let g:airline#themes#mono#palette.normal                 = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
    let g:airline#themes#mono#palette.normal.airline_warning = s:warning
    let g:airline#themes#mono#palette.normal.airline_error   = s:error

    let g:airline#themes#mono#palette.insert                 = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
    let g:airline#themes#mono#palette.insert.airline_warning = s:warning
    let g:airline#themes#mono#palette.insert.airline_error   = s:error

    let g:airline#themes#mono#palette.visual                 = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)
    let g:airline#themes#mono#palette.visual.airline_warning = s:warning
    let g:airline#themes#mono#palette.visual.airline_error   = s:error

    let g:airline#themes#mono#palette.commandline                 = airline#themes#generate_color_map(s:commandline1, s:commandline2, s:commandline3)
    let g:airline#themes#mono#palette.commandline.airline_warning = s:warning
    let g:airline#themes#mono#palette.commandline.airline_error   = s:error

    let g:airline#themes#mono#palette.replace                 = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)
    let g:airline#themes#mono#palette.replace.airline_warning = s:warning
    let g:airline#themes#mono#palette.replace.airline_error   = s:error

    let g:airline#themes#mono#palette.inactive                 = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
    let g:airline#themes#mono#palette.inactive.airline_warning = s:warning
    let g:airline#themes#mono#palette.inactive.airline_error   = s:error
endif 