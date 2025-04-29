" Dark Vim/Neovim colorscheme.
"
" URL:      github.com/bluz71/vim-mono-colors
" License:  MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif

" Set colorscheme name.
let g:colors_name = 'mono'

" Define theme options.
let g:monoCursorColor = get(g:, 'monoCursorColor', v:false)
let g:monoItalics = get(g:, 'monoItalics', v:true)
let g:monoNormalFloat = get(g:, 'monoNormalFloat', v:false)
let g:monoTerminalColors = get(g:, 'monoTerminalColors', v:true)
let g:monoTransparent = get(g:, 'monoTransparent', v:false)
let g:monoUndercurls = get(g:, 'monoUndercurls', v:true)
let g:monoUnderlineMatchParen = get(g:, 'monoUnderlineMatchParen', v:false)
let g:monoVirtualTextColor =  get(g:, 'monoVirtualTextColor', v:false)
let g:monoWinSeparator = get(g:, 'monoWinSeparator', 1)

" Load theme style independently for Neovim and Vim.
if has('nvim')
    lua require("mono").style()
else
    set termguicolors " Enable Vim true-color support
    call mono#Style()
end

set background=dark " mono is a dark theme 