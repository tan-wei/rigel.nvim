-- Editor & UI highlight groups
-- Ported from colors/rigel.vim

---@param hl fun(group: string, values: vim.api.keyset.highlight)
---@param c RigelPalette
---@param config RigelOpts
---@param bg string
---@param bg_dark string
---@param bold fun(): string
---@param italic fun(): string
return function(hl, c, config, bg, bg_dark, bold, italic)
  -- Base editor groups
  hl("Normal",          { fg = c.fg, bg = bg })
  hl("ColorColumn",     { bg = bg_dark })
  hl("Cursor",          { bg = c.orange })
  hl("CursorColumn",    { bg = bg_dark })
  hl("CursorLine",      { bg = bg_dark })
  hl("CursorLineNr",    { fg = c.cursor_line_nr, bg = bg_dark })
  hl("LineNr",          { fg = c.line_nr, bg = bg })
  hl("SignColumn",      { fg = c.fg_alt, bg = bg })
  hl("Conceal",         { fg = c.comment })
  hl("Visual",          { bg = c.bg_highlight })
  hl("MatchParen",      { fg = bg, bg = c.teal })

  -- Search
  hl("Search",          { fg = bg, bg = c.orange })
  hl("IncSearch",       { fg = bg, bg = c.yellow })
  hl("CurSearch",       { link = "IncSearch" })
  hl("Substitute",      { link = "Search" })

  -- Messages
  hl("ErrorMsg",        { fg = c.red })
  hl("WarningMsg",      { fg = c.orange })
  hl("ModeMsg",         { fg = c.fg })
  hl("MoreMsg",         { fg = c.green })
  hl("Question",        { fg = c.teal })

  -- Splits & statusline
  hl("VertSplit",       { fg = c.vert_split, bg = bg })
  hl("StatusLine",      { fg = c.fg, bg = c.bg_alt })
  hl("StatusLineNC",    { fg = c.fg, bg = c.vert_split })
  hl("StatusLineTerm",  { link = "StatusLine" })
  hl("StatusLineTermNC", { link = "StatusLineNC" })
  hl("TabLine",         { fg = c.comment, bg = c.bg_alt })
  hl("TabLineFill",     { bg = c.bg_alt })
  hl("TabLineSel",      { fg = c.fg, bg = c.blue })
  hl("Title",           { fg = c.teal })
  hl("WildMenu",        { fg = c.fg, bg = c.vert_split })

  -- Folds
  hl("Folded",          { fg = c.comment, bg = c.bg_alt })
  hl("FoldColumn",      { fg = c.comment })

  -- Diffs
  hl("DiffAdd",         { fg = c.diff_add, bg = bg })
  hl("DiffChange",      { fg = c.diff_change, bg = bg, underline = true })
  hl("DiffDelete",      { fg = c.diff_delete, bg = bg })
  hl("DiffText",        { fg = c.fg })

  -- Spelling
  hl("SpellBad",        { fg = c.comment, undercurl = true, sp = c.red })
  hl("SpellCap",        { undercurl = true, sp = c.yellow })
  hl("SpellLocal",      { undercurl = true, sp = c.blue })
  hl("SpellRare",       { undercurl = true, sp = c.magenta })

  -- Popup menu
  hl("Pmenu",           { fg = c.fg, bg = c.bg_alt })
  hl("PmenuSel",        { fg = c.teal, bg = c.vert_split })
  hl("PmenuSbar",       { bg = c.bg_alt })
  hl("PmenuThumb",      { bg = c.vert_split })

  -- Misc UI
  hl("NonText",         { fg = c.nontext })
  hl("SpecialKey",      { fg = c.nontext })
  hl("Whitespace",      { fg = c.nontext })
  hl("EndOfBuffer",     { fg = bg })
  hl("Directory",       { fg = c.blue_light })
  hl("QuickFixLine",    { fg = c.orange, bold = true })

  -- Float / Windows
  hl("NormalFloat",     { fg = c.fg, bg = c.bg_alt })
  hl("FloatBorder",     { fg = c.vert_split, bg = c.bg_alt })
  hl("WinSeparator",    { link = "VertSplit" })

  -- Diagnostics
  hl("DiagnosticError",         { fg = c.red })
  hl("DiagnosticWarn",          { fg = c.yellow })
  hl("DiagnosticInfo",          { fg = c.blue_light })
  hl("DiagnosticHint",          { fg = c.comment })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
  hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.blue_light })
  hl("DiagnosticUnderlineHint",  { undercurl = true, sp = c.comment })

  -- ============================
  -- Syntax (Vim legacy fallback)
  -- ============================
  hl("Comment",         { fg = c.comment, italic = config.italic })
  hl("Constant",        { fg = c.orange })
  hl("String",          { fg = c.green })
  hl("Character",       { fg = c.green })
  hl("Boolean",         { fg = "#ff5a67" })
  hl("Number",          { link = "Boolean" })
  hl("Float",           { link = "Boolean" })
  hl("Identifier",      { fg = c.orange })
  hl("Function",        { fg = c.blue_light })
  hl("Statement",       { fg = c.blue })
  hl("Conditional",     { link = "Keyword" })
  hl("Repeat",          { link = "Keyword" })
  hl("Label",           { link = "Keyword" })
  hl("Operator",        { link = "Constant" })
  hl("Keyword",         { fg = c.blue })
  hl("Exception",       { fg = c.red })
  hl("PreProc",         { link = "Constant" })
  hl("Include",         { fg = c.cyan })
  hl("Macro",           { link = "Include" })
  hl("PreCondit",       { link = "Include" })
  hl("Define",          { link = "Include" })
  hl("Type",            { fg = "#ff5a67" })
  hl("StorageClass",    { link = "Keyword" })
  hl("Structure",       { fg = c.blue })
  hl("Typedef",         { fg = c.blue })
  hl("Special",         { link = "Keyword" })
  hl("SpecialChar",     { link = "Special" })
  hl("Tag",             { fg = c.blue })
  hl("Delimiter",       { fg = c.fg })
  hl("SpecialComment",  { fg = c.teal })
  hl("Debug",           { fg = c.magenta })
  hl("Underlined",      { fg = c.fg_alt, underline = true })
  hl("Ignore",          { link = "Comment" })
  hl("Error",           { fg = c.red })
  hl("Todo",            { fg = c.magenta })
  hl("Label",           { link = "Keyword" })
end