# Mono Colorscheme

A dark Vim/Neovim colorscheme based on Moonfly, with a focus on monochromatic aesthetics.
Was vide coded using cursor free trial. based on the monochrome theme in vscode (the good one) :D

### NOTE:
- Only tested with neovim. vim testing required.
- Code stucture is now bullsh*t. all highlights are in a single file lmao
- None of the statusline plugin tested.
- Only works quite well with my nvim setup at `psynyde/nvim`. All plugins used by me are well supported :D

### TODO:
- restructure shits. like seperate files for different plugins.
- make things lazy load :o
- meow >:3

## Features

- Dark background with carefully chosen colors
- Support for both Vim and Neovim
- Terminal colors support
- Italic support (can be disabled)
- Transparent background support
- Undercurl support
- Customizable options

## Installation

### Using a plugin manager

#### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'psynyde/mono'
```

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'psynyde/mono'
```

### Manual installation

Copy the files to your Vim configuration directory:

```bash
# For Vim
cp -r colors ~/.vim/
cp -r autoload ~/.vim/
cp -r lua ~/.vim/

# For Neovim
cp -r colors ~/.config/nvim/
cp -r autoload ~/.config/nvim/
cp -r lua ~/.config/nvim/
```

## Usage

Add the following to your `init.vim` or `init.lua`:

```vim
" Vim
colorscheme mono
```

```lua
-- Neovim
vim.cmd('colorscheme mono')
```

## Configuration

The following options are available:

```vim
" Enable/disable cursor color
let g:monoCursorColor = 0

" Enable/disable italics
let g:monoItalics = 1

" Enable/disable normal float
let g:monoNormalFloat = 0

" Enable/disable terminal colors
let g:monoTerminalColors = 1

" Enable/disable transparent background
let g:monoTransparent = 0

" Enable/disable undercurls
let g:monoUndercurls = 1

" Enable/disable underline match paren
let g:monoUnderlineMatchParen = 0

" Enable/disable virtual text color
let g:monoVirtualTextColor = 0

" Window separator style (0-2)
let g:monoWinSeparator = 1
```

## License

[MIT License](LICENSE)
