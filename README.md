<div align="center">

# 🌌 rigel.nvim

**A Neovim Lua port of the [Rigel](https://github.com/Rigellute/rigel) colorscheme**

Dark, starry blue theme inspired by the star Rigel ✨

![Preview](https://user-images.githubusercontent.com/12150276/62868142-d9a16100-bd0c-11e9-8d25-9e28afa6df37.png)

</div>

## Features

- Full **Treesitter** support (`@keyword`, `@string`, `@function`, etc.)
- **LSP semantic token** highlights
- **Plugin** support:
  - Telescope, nvim-tree, Lualine, Bufferline
  - Which-key, Noice, Trouble, Notify
  - Git signs / gitsigns, Indent-blankline
  - nvim-cmp / blink.cmp
  - DAP, Flash, Snacks, Mini
  - Dashboard, Toggleterm
- **Transparent** background option
- **Italic** and **Bold** toggle options
- **Vim legacy syntax** fallback

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Rigellute/rigel.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("rigel").setup {
      transparent = false,  -- Set to true for transparent background
      italic = true,        -- Enable italic for comments
      bold = false,         -- Enable bold for some groups
    }
  end,
}
```

## Usage

```vim
:colorscheme rigel
```

## Configuration

```lua
require("rigel").setup {
  transparent = false,
  italic = false,
  bold = false,
}
```

### Options

| Option        | Type      | Default | Description                  |
|---------------|-----------|---------|------------------------------|
| `transparent` | `boolean` | `false` | Transparent background       |
| `italic`      | `boolean` | `false` | Italic for comments          |
| `bold`        | `boolean` | `false` | Bold for some groups         |

## Terminal Colors

The theme also sets 16 terminal colors for a consistent experience inside Neovim's terminal.

## Credits

- **[Alexander Keliris](https://github.com/Rigellute)** — Original [Rigel](https://github.com/Rigellute/rigel) colorscheme for Vim
- **[Estilo](https://github.com/jacoborus/estilo)** — Used by the original project for color generation

### Migration Reference

This port is inspired by the migration pattern of:

- [doom-one.nvim](https://github.com/NTBBloodbath/doom-one.nvim) — Lua port from vim colorscheme with treesitter support
- [solarized.nvim](https://github.com/shaunsingh/solarized.nvim) — Lua port of classic Solarized with treesitter

## License

MIT

## Palette

| Color        | Hex       | Description             |
|--------------|-----------|-------------------------|
| bg           | `#002635` | Dark blue background    |
| bg_dark      | `#001a25` | Darker editor bg        |
| bg_alt       | `#00384d` | Alt background          |
| fg           | `#e6e6dc` | Warm white foreground   |
| fg_alt       | `#b7cff9` | Light blue (alt fg)     |
| comment      | `#77929e` | Muted blue-gray         |
| red          | `#c43060` | Errors, exceptions      |
| orange       | `#f08e48` | Constants, identifiers  |
| yellow       | `#ffcc1b` | Search highlights       |
| green        | `#9cf087` | Strings                 |
| blue         | `#1c8db2` | Keywords, statements    |
| blue_light   | `#7eb2dd` | Functions               |
| purple       | `#c694ff` | Object keys, modules    |
| magenta      | `#fb94ff` | Debug, todo             |
| teal         | `#00ffff` | Titles, special comment |