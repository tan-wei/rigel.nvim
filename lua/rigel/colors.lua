---@class RigelPalette
---@field bg string
---@field bg_dark string
---@field bg_alt string
---@field bg_highlight string
---@field fg string
---@field fg_alt string
---@field fg_dim string
---@field comment string
---@field nontext string
---@field line_nr string
---@field cursor_line_nr string
---@field vert_split string
---@field red string
---@field orange string
---@field yellow string
---@field green string
---@field green_dim string
---@field cyan string
---@field blue string
---@field blue_light string
---@field purple string
---@field magenta string
---@field teal string
---@field white string
---@field diff_add string
---@field diff_change string
---@field diff_delete string

---@type RigelPalette
local M = {
  -- Background variants
  bg              = "#002635",
  bg_dark         = "#001a25",
  bg_alt          = "#00384d",
  bg_highlight    = "#194b5e",

  -- Foreground variants
  fg              = "#e6e6dc",
  fg_alt          = "#b7cff9",
  fg_dim          = "#77929e",

  -- Editor decor
  comment         = "#77929e",
  nontext         = "#517f8d",
  line_nr         = "#77929e",
  cursor_line_nr  = "#b7cff9",
  vert_split      = "#517f8d",

  -- Colors (following original rigel naming)
  red             = "#c43060",
  orange          = "#f08e48",
  yellow          = "#ffcc1b",
  green           = "#9cf087",
  green_dim       = "#7fc06e",
  cyan            = "#00cccc",
  blue            = "#1c8db2",
  blue_light      = "#7eb2dd",
  purple          = "#c694ff",
  magenta         = "#fb94ff",
  teal            = "#00ffff",
  white           = "#e6e6dc",

  -- Diff
  diff_add        = "#9cf087",
  diff_change     = "#00cccc",
  diff_delete     = "#c43060",
}

return M