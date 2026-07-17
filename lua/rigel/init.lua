-- Neovim color file
-- Name:    rigel
-- URL:     https://github.com/Rigellute/rigel
-- License: MIT
-- Based on the original vim colorscheme by Alexander Keliris.
-- This is a Lua port with full Treesitter and LSP support.

---@type { setup: fun(opts?: RigelOpts) }
local M = {}

---@class RigelOpts
---@field transparent? boolean  Make background transparent
---@field italic? boolean       Enable italic for comments
---@field bold? boolean         Enable bold for some groups

local defaults = {
  transparent = false,
  italic = false,
  bold = false,
}

---@type RigelOpts
local config = {}

---@type RigelPalette
local palette

function M.setup(opts)
  config = vim.tbl_deep_extend("force", {}, defaults, opts or {})
  palette = require("rigel.colors")
  M.load()
end

---@param group string
---@param values vim.api.keyset.highlight
local function hl(group, values)
  vim.api.nvim_set_hl(0, group, values)
end

local function bold()
  return config.bold
end

local function italic()
  return config.italic
end

-- Map the &background option
vim.g.rigel_background = "dark"

function M.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "rigel"

  local bg = config.transparent and "NONE" or palette.bg
  local bg_dark = config.transparent and "NONE" or palette.bg_dark

  -- ============================
  -- Editor & UI highlights
  -- ============================
  require("rigel.highlights")(hl, palette, config, bg, bg_dark, bold, italic)

  -- ============================
  -- Treesitter highlights
  -- ============================
  require("rigel.treesitter")(hl, palette, config, bg, bg_dark, bold, italic)

  -- ============================
  -- LSP semantic token highlights
  -- ============================
  require("rigel.lsp")(hl, palette, config, bg, bg_dark, bold, italic)

  -- ============================
  -- Plugin highlights
  -- ============================
  require("rigel.plugins")(hl, palette, config, bg, bg_dark, bold, italic)

  -- ============================
  -- Re-apply critical groups that might get overwritten
  -- ============================
  hl("CursorLineNr",    { fg = palette.cursor_line_nr, bg = bg_dark })
  hl("Cursor",          { bg = palette.orange })
  hl("Visual",          { bg = palette.bg_highlight })

  -- ============================
  -- Terminal colors
  -- ============================
  vim.g.terminal_color_foreground = palette.fg
  vim.g.terminal_color_background = palette.bg
  vim.g.terminal_color_0          = palette.bg_alt
  vim.g.terminal_color_1          = palette.red
  vim.g.terminal_color_2          = palette.green_dim
  vim.g.terminal_color_3          = palette.orange
  vim.g.terminal_color_4          = palette.blue
  vim.g.terminal_color_5          = palette.purple
  vim.g.terminal_color_6          = palette.cyan
  vim.g.terminal_color_7          = palette.comment
  vim.g.terminal_color_8          = palette.nontext
  vim.g.terminal_color_9          = "#ff5a67"
  vim.g.terminal_color_10         = palette.green
  vim.g.terminal_color_11         = palette.yellow
  vim.g.terminal_color_12         = palette.blue_light
  vim.g.terminal_color_13         = palette.magenta
  vim.g.terminal_color_14         = palette.teal
  vim.g.terminal_color_15         = palette.fg_alt
end

return M