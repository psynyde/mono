# Mono Colorscheme

A dark Neovim colorscheme based on Moonfly, with a focus on monochromatic aesthetics.

### NOTE:
- Only tested with neovim.
- Code stucture is now bullsh*t. all highlights are in a single file lmao
- Only works quite well with my nvim setup at `psynyde/nvim`. All plugins used by me are well supported :D

## Features

- Dark background with carefully chosen colors
- Terminal colors support
- Italic support (can be disabled)
- Transparent background support
- Undercurl support
- Customizable options

## Installation

### Using a plugin manager

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'psynyde/mono'
```

### Manual installation

Copy the files to your Neovim configuration directory:

```bash
cp -r colors ~/.config/nvim/
cp -r lua ~/.config/nvim/
```

## Usage

Add the following to your `init.lua`:

```lua
vim.cmd('colorscheme mono')
```

## Configuration

To customize the colorscheme, use the `setup` function.

**Example:** (using lazy.nvim)

```lua
{
    "psynyde/mono",
    lazy = false,
    priority = 1000,
    config = function()
        require("mono").setup({
            italics = true,
            undercurl = true,
            transparent = true,
        })
        vim.cmd.colorscheme("mono")
    end,
}
```

### Available Options

| Option                 | Description                                       | Default     |
| ------------------------ | ------------------------------------------------- | ----------- |
| `italics`          | Use italics for comments, keywords, etc.          | `true`    |
| `terminal_colors`   | Use the theme's palette for the terminal UI.      | `false`   |
| `transparent`      | Use a transparent background.                     | `false`   |
| `undercurl`        | Use undercurls for spelling and lint errors.      | `false`   |

## Lualine

This colorscheme includes a `lualine` theme. To use it, set the theme in your `lualine` configuration:

```lua
require('lualine').setup {
  options = {
    theme = 'mono'
    -- ... your other lualine options
  }
}
```

### Preview:
<img width="1365" height="764" alt="image" src="https://github.com/user-attachments/assets/34fbb6b2-7f8f-4d5c-bf24-66796af79dcb" />
<img width="1353" height="767" alt="image" src="https://github.com/user-attachments/assets/c59f4b13-e449-4310-b2a9-898a18456a44" />

## License

[MIT License](LICENSE)
