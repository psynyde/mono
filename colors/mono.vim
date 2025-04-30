" Dark Vim/Neovim colorscheme.
"
" URL:      github.com/bluz71/vim-mono-colors
" License:  MIT (https://opensource.org/licenses/MIT)

" Clear any existing highlighting.
highlight clear

" Reset syntax highlighting.
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

" Load the appropriate style function.
if has('nvim')
    lua require('mono').style()
else
    call mono#Style()
endif

set background=dark " mono is a dark theme 