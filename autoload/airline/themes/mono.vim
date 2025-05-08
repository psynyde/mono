" mono color scheme for airline (https://github.com/bluz71/vim-mono-colors).
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

let s:normal1      = [s:palette.dark[0],  s:palette.term_blue[0],    s:palette.dark[1],  s:palette.term_blue[1]]
let s:normal2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:normal3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:inactive1    = [s:palette.grey[17][0],  s:palette.black[0],  s:palette.grey[17][1],  s:palette.black[1]]
let s:inactive2    = [s:palette.grey[17][0],  s:palette.black[0],  s:palette.grey[17][1],  s:palette.black[1]]
let s:inactive3    = [s:palette.grey[17][0],  s:palette.black[0],  s:palette.grey[17][1],  s:palette.black[1]]
let s:insert1      = [s:palette.dark[0],  s:palette.term_green[0], s:palette.dark[1],  s:palette.term_green[1]]
let s:insert2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:insert3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:visual1      = [s:palette.dark[0],  s:palette.term_magenta[0],  s:palette.dark[1],  s:palette.term_magenta[1]]
let s:visual2      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:visual3      = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:commandline1 = [s:palette.dark[0],  s:palette.term_yellow[0],  s:palette.dark[1],  s:palette.term_yellow[1]]
let s:commandline2 = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:commandline3 = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:replace1     = [s:palette.dark[0],  s:palette.diag_error[0], s:palette.dark[1],  s:palette.diag_error[1]]
let s:replace2     = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:replace3     = [s:palette.white[0], s:palette.black[0],  s:palette.white[1], s:palette.black[1]]
let s:warning      = [s:palette.term_yellow[0],  s:palette.black[0],  s:palette.term_yellow[1],  s:palette.black[1]]
let s:error        = [s:palette.diag_error[0], s:palette.black[0],  s:palette.diag_error[1], s:palette.black[1]]

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