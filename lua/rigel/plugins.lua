-- Plugin highlight groups
-- Support for common Neovim plugins

---@param hl fun(group: string, values: vim.api.keyset.highlight)
---@param c RigelPalette
---@param config RigelOpts
---@param bg string
---@param bg_dark string
---@param bold fun(): string
---@param italic fun(): string
return function(hl, c, config, bg, bg_dark, bold, italic)
  -- ============================
  -- nvim-tree
  -- ============================
  hl("NvimTreeNormal",           { fg = c.fg, bg = bg })
  hl("NvimTreeFolderIcon",       { fg = c.blue })
  hl("NvimTreeFileIcon",         { fg = c.fg })
  hl("NvimTreeEmptyFolderName",  { fg = c.comment })
  hl("NvimTreeFolderName",       { fg = c.blue, bold = true })
  hl("NvimTreeOpenedFolderName", { fg = c.blue_light, bold = true })
  hl("NvimTreeRootFolder",       { fg = c.green, bold = true })
  hl("NvimTreeSymlink",          { fg = c.purple, underline = true })
  hl("NvimTreeExecFile",         { fg = c.green })
  hl("NvimTreeImageFile",        { fg = c.magenta })
  hl("NvimTreeIndentMarker",     { fg = c.vert_split })
  hl("NvimTreeGitDirty",         { fg = c.yellow })
  hl("NvimTreeGitStaged",        { fg = c.green })
  hl("NvimTreeGitNew",           { fg = c.green })
  hl("NvimTreeGitDeleted",       { fg = c.red })
  hl("NvimTreeWindowPicker",     { fg = c.fg, bg = c.blue })

  -- ============================
  -- Telescope
  -- ============================
  hl("TelescopeNormal",          { fg = c.fg, bg = c.bg_alt })
  hl("TelescopeBorder",          { fg = c.vert_split, bg = c.bg_alt })
  hl("TelescopePromptNormal",    { fg = c.fg, bg = bg })
  hl("TelescopePromptBorder",    { fg = c.blue, bg = bg })
  hl("TelescopePromptPrefix",    { fg = c.orange })
  hl("TelescopeResultsTitle",    { fg = c.blue })
  hl("TelescopePreviewTitle",    { fg = c.green })
  hl("TelescopeSelection",       { fg = c.fg, bg = c.bg_highlight })
  hl("TelescopeSelectionCaret",  { fg = c.orange })
  hl("TelescopeMatching",        { fg = c.yellow, bold = true })
  hl("TelescopeMultiSelection",  { fg = c.orange })

  -- ============================
  -- Which-key
  -- ============================
  hl("WhichKey",                 { fg = c.teal, bold = true })
  hl("WhichKeyGroup",            { fg = c.blue })
  hl("WhichKeyDesc",             { fg = c.fg })
  hl("WhichKeySeparator",        { fg = c.comment })
  hl("WhichKeyFloat",            { bg = c.bg_alt })

  -- ============================
  -- Lualine
  -- ============================
  hl("lualine_a_normal",         { fg = bg, bg = c.blue })
  hl("lualine_b_normal",         { fg = c.fg, bg = c.bg_alt })
  hl("lualine_c_normal",         { fg = c.fg, bg = bg })
  hl("lualine_a_insert",         { fg = bg, bg = c.green })
  hl("lualine_a_visual",         { fg = bg, bg = c.orange })
  hl("lualine_a_replace",        { fg = bg, bg = c.red })
  hl("lualine_a_command",        { fg = bg, bg = c.purple })

  -- ============================
  -- Bufferline
  -- ============================
  hl("BufferLineTabSelected",    { fg = c.fg, bg = c.blue })
  hl("BufferLineTabSeparator",   { fg = c.vert_split, bg = bg })
  hl("BufferLineFill",           { bg = bg })
  hl("BufferLineBufferSelected", { fg = c.fg, bg = bg })
  hl("BufferLineBufferVisible",  { fg = c.comment })
  hl("BufferLineBufferInactive", { fg = c.comment })

  -- ============================
  -- Noice / Notify
  -- ============================
  hl("NoiceMsg",                 { fg = c.fg })
  hl("NoiceCmdlinePopup",        { fg = c.fg, bg = c.bg_alt })
  hl("NoiceCmdlineIcon",         { fg = c.orange })
  hl("NotifyERRORIcon",          { fg = c.red })
  hl("NotifyWARNIcon",           { fg = c.yellow })
  hl("NotifyINFOIcon",           { fg = c.blue_light })
  hl("NotifyDEBUGIcon",          { fg = c.comment })
  hl("NotifyTRACEIcon",          { fg = c.magenta })

  -- ============================
  -- Trouble
  -- ============================
  hl("TroubleNormal",            { fg = c.fg, bg = bg })
  hl("TroubleCount",             { fg = c.orange, bold = true })
  hl("TroubleText",              { fg = c.fg })

  -- ============================
  -- Git signs / gitsigns
  -- ============================
  hl("GitSignsAdd",              { fg = c.green })
  hl("GitSignsChange",           { fg = c.cyan })
  hl("GitSignsDelete",           { fg = c.red })
  hl("GitSignsAddLn",            { fg = c.green })
  hl("GitSignsChangeLn",         { fg = c.cyan })
  hl("GitSignsDeleteLn",         { fg = c.red })

  -- ============================
  -- Indent blankline
  -- ============================
  hl("IndentBlanklineChar",               { fg = c.vert_split })
  hl("IndentBlanklineContextChar",        { fg = c.teal })
  hl("IblIndent",                         { fg = c.vert_split })
  hl("IblScope",                          { fg = c.teal })

  -- ============================
  -- Nvim-cmp / Blink
  -- ============================
  hl("CmpItemAbbr",              { fg = c.fg })
  hl("CmpItemAbbrDeprecated",    { fg = c.comment, strikethrough = true })
  hl("CmpItemAbbrMatch",         { fg = c.blue_light, bold = true })
  hl("CmpItemAbbrMatchFuzzy",    { fg = c.blue_light })
  hl("CmpItemKindDefault",       { fg = c.comment })
  hl("CmpItemMenu",              { fg = c.comment })
  hl("CmpItemKindKeyword",       { fg = c.blue })
  hl("CmpItemKindVariable",       { fg = c.orange })
  hl("CmpItemKindFunction",      { fg = c.blue_light })
  hl("CmpItemKindMethod",        { fg = c.blue_light })
  hl("CmpItemKindType",          { fg = "#ff5a67" })
  hl("CmpItemKindClass",         { fg = "#ff5a67" })
  hl("CmpItemKindInterface",     { fg = "#ff5a67" })
  hl("CmpItemKindStruct",        { fg = "#ff5a67" })
  hl("CmpItemKindModule",        { fg = c.purple })
  hl("CmpItemKindProperty",      { fg = c.purple })
  hl("CmpItemKindField",         { fg = c.purple })
  hl("CmpItemKindUnit",          { fg = c.green })
  hl("CmpItemKindValue",         { fg = c.orange })
  hl("CmpItemKindEnum",          { fg = "#ff5a67" })
  hl("CmpItemKindEnumMember",    { fg = c.purple })
  hl("CmpItemKindSnippet",       { fg = c.magenta })
  hl("CmpItemKindConstant",      { fg = c.orange })
  hl("CmpItemKindString",        { fg = c.green })
  hl("CmpItemKindNumber",        { fg = "#ff5a67" })
  hl("CmpItemKindBoolean",       { fg = "#ff5a67" })
  hl("CmpItemKindFile",          { fg = c.fg })
  hl("CmpItemKindReference",     { fg = c.teal })
  hl("CmpItemKindFolder",        { fg = c.blue })
  hl("CmpItemKindColor",         { fg = c.magenta })
  hl("CmpItemKindCopilot",       { fg = c.teal })

  -- ============================
  -- Snacks
  -- ============================
  hl("SnacksNormal",             { fg = c.fg, bg = c.bg_alt })

  -- ============================
  -- DAP
  -- ============================
  hl("DapBreakpoint",            { fg = c.red })
  hl("DapLogPoint",              { fg = c.yellow })
  hl("DapStopped",               { fg = c.green })
  hl("DapUIBreakpointsCurrentLine", { fg = c.green, bold = true })
  hl("DapUIBreakpointsInfo",     { fg = c.blue_light })
  hl("DapUIBreakpointsPath",     { fg = c.comment })
  hl("DapUILineNumber",          { fg = c.orange })
  hl("DapUIFrameName",           { fg = c.fg })

  -- ============================
  -- Flash
  -- ============================
  hl("FlashLabel",               { fg = bg, bg = c.orange, bold = true })
  hl("FlashBackdrop",            { fg = c.comment })
  hl("FlashMatch",               { fg = bg, bg = c.yellow })

  -- ============================
  -- Dash
  -- ============================
  hl("DashboardHeader",          { fg = c.blue })
  hl("DashboardCenter",          { fg = c.fg })
  hl("DashboardFooter",          { fg = c.comment })
  hl("DashboardShortcut",        { fg = c.orange })
  hl("DashboardDesc",            { fg = c.fg })
  hl("DashboardIcon",            { fg = c.blue })
  hl("DashboardProjectTitle",    { fg = c.teal })
  hl("DashboardProjectIcon",     { fg = c.orange })

  -- ============================
  -- Terminal / toggleterm
  -- ============================
  hl("Terminal",                 { fg = c.fg, bg = bg })
  hl("ToggleTermNormal",         { fg = c.fg, bg = bg })
  hl("ToggleTermBorder",         { fg = c.vert_split })

  -- ============================
  -- Mini
  -- ============================
  hl("MiniStatuslineModeNormal", { fg = bg, bg = c.blue })
  hl("MiniStatuslineModeInsert", { fg = bg, bg = c.green })
  hl("MiniStatuslineModeVisual", { fg = bg, bg = c.orange })
  hl("MiniStatuslineModeReplace", { fg = bg, bg = c.red })
  hl("MiniStatuslineModeCommand", { fg = bg, bg = c.purple })
  hl("MiniStatuslineDevinfo",    { fg = c.fg, bg = c.bg_alt })
  hl("MiniStatuslineFilename",   { fg = c.fg, bg = bg })
  hl("MiniStatuslineInactive",   { fg = c.comment, bg = bg })
  hl("MiniTablineCurrent",       { fg = c.fg, bg = c.blue })
  hl("MiniTablineVisible",       { fg = c.fg, bg = c.bg_alt })
  hl("MiniTablineHidden",        { fg = c.comment, bg = bg })
  hl("MiniTablineFill",          { bg = bg })
  hl("MiniIndentscopeSymbol",    { fg = c.teal })
  hl("MiniJump",                 { fg = bg, bg = c.orange })
  hl("MiniStarterHeader",        { fg = c.blue })
  hl("MiniStarterItem",          { fg = c.fg })
  hl("MiniStarterItemBullet",    { fg = c.vert_split })
  hl("MiniStarterSection",       { fg = c.blue })
  hl("MiniStarterFooter",        { fg = c.comment })
  hl("MiniPickBorder",           { fg = c.vert_split })
  hl("MiniPickMatchCurrent",     { fg = c.yellow, bold = true })
  hl("MiniPickMatchRanges",      { fg = c.blue_light })
end