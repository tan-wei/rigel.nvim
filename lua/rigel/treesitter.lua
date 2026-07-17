-- Treesitter highlight groups
-- See: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights

---@param hl fun(group: string, values: vim.api.keyset.highlight)
---@param c RigelPalette
---@param config RigelOpts
---@param bg string
---@param bg_dark string
---@param bold fun(): string
---@param italic fun(): string
return function(hl, c, config, bg, bg_dark, bold, italic)
  -- Misc
  hl("@comment",                 { fg = c.comment, italic = config.italic })
  hl("@comment.todo",            { fg = c.magenta, bold = true })
  hl("@comment.error",           { fg = c.red, bold = true })
  hl("@comment.warning",         { fg = c.yellow, bold = true })
  hl("@comment.note",            { fg = c.blue_light, bold = true })
  hl("@none",                    {})
  hl("@preproc",                 { link = "PreProc" })
  hl("@define",                  { link = "Define" })
  hl("@operator",                { fg = c.orange })

  -- Punctuation
  hl("@punctuation.delimiter",   { fg = c.fg })
  hl("@punctuation.bracket",     { fg = c.fg })
  hl("@punctuation.special",     { fg = c.teal })

  -- Literals
  hl("@string",                  { fg = c.green })
  hl("@string.regex",            { fg = c.orange })
  hl("@string.escape",           { fg = c.magenta })
  hl("@string.special",          { fg = c.green_dim })
  hl("@string.special.symbol",   { fg = c.green })
  hl("@string.special.url",      { fg = c.blue_light, underline = true })
  hl("@character",               { fg = c.green })
  hl("@character.special",       { fg = c.magenta })
  hl("@number",                  { fg = "#ff5a67" })
  hl("@boolean",                 { fg = "#ff5a67" })
  hl("@float",                   { link = "@number" })

  -- Functions
  hl("@function",                { fg = c.blue_light })
  hl("@function.builtin",        { fg = c.teal })
  hl("@function.call",           { fg = c.blue_light })
  hl("@function.macro",          { fg = c.magenta })
  hl("@method",                  { fg = c.blue_light })
  hl("@method.call",             { fg = c.blue_light })
  hl("@constructor",             { fg = c.teal })
  hl("@parameter",               { fg = c.fg })
  hl("@parameter.reference",     { fg = c.fg })

  -- Keywords
  hl("@keyword",                 { fg = c.blue })
  hl("@keyword.import",          { fg = c.cyan, italic = config.italic })
  hl("@keyword.repeat",          { fg = c.blue })
  hl("@keyword.return",          { fg = c.blue })
  hl("@keyword.debug",           { fg = c.red })
  hl("@keyword.exception",       { fg = c.red })
  hl("@keyword.conditional",     { fg = c.blue })
  hl("@keyword.directive",       { fg = c.cyan })
  hl("@keyword.directive.define", { fg = c.cyan })
  hl("@keyword.storage",         { fg = c.blue })
  hl("@keyword.function",        { fg = c.blue })
  hl("@keyword.operator",        { fg = c.blue })
  hl("@keyword.modifier",        { fg = c.blue })

  -- Types
  hl("@type",                    { fg = "#ff5a67" })
  hl("@type.builtin",            { fg = "#ff5a67" })
  hl("@type.definition",         { fg = "#ff5a67" })
  hl("@type.qualifier",          { fg = c.blue })
  hl("@storageclass",            { fg = c.blue })
  hl("@attribute",               { fg = c.orange })
  hl("@property",                { fg = c.purple })

  -- Identifiers
  hl("@variable",                { fg = c.fg })
  hl("@variable.builtin",        { fg = c.fg_alt })
  hl("@variable.member",         { fg = c.purple })
  hl("@variable.parameter",      { fg = c.orange })
  hl("@label",                   { fg = c.blue })

  -- Constants
  hl("@constant",                { fg = c.orange })
  hl("@constant.builtin",        { fg = "#ff5a67" })
  hl("@constant.macro",          { fg = c.magenta })

  -- Modules
  hl("@module",                  { fg = c.purple })
  hl("@module.builtin",          { fg = c.purple })
  hl("@namespace",               { fg = c.purple })

  -- Symbols
  hl("@symbol",                  { fg = c.green })

  -- Text emphasis
  hl("@text",                    { fg = c.fg })
  hl("@text.strong",             { bold = true })
  hl("@text.emphasis",           { italic = true })
  hl("@text.underline",          { underline = true })
  hl("@text.strike",             { strikethrough = true })
  hl("@text.title",              { fg = c.teal, bold = true })
  hl("@text.literal",            { fg = c.green_dim })
  hl("@text.uri",                { fg = c.blue_light, underline = true })
  hl("@text.math",               { fg = c.magenta })
  hl("@text.environment",        { fg = c.teal })
  hl("@text.environment.name",   { fg = c.teal })
  hl("@text.reference",          { fg = c.teal })
  hl("@text.todo",               { fg = c.magenta, bold = true })
  hl("@text.note",               { fg = c.blue_light, bold = true })
  hl("@text.warning",            { fg = c.yellow, bold = true })
  hl("@text.danger",             { fg = c.red, bold = true })
  hl("@text.diff.add",           { fg = c.green })
  hl("@text.diff.delete",        { fg = c.red })

  -- Tags (HTML, XML, etc.)
  hl("@tag",                     { fg = c.blue_light })
  hl("@tag.attribute",           { fg = "#ff5a67" })
  hl("@tag.delimiter",           { fg = c.comment })

  -- Markdown-specific
  hl("@markdown.heading",        { fg = c.teal, bold = true })
  hl("@markdown.heading.1",      { fg = c.teal, bold = true })
  hl("@markdown.heading.2",      { link = "@markdown.heading.1" })
  hl("@markdown.heading.3",      { fg = c.teal })
  hl("@markdown.heading.4",      { link = "@markdown.heading.3" })
  hl("@markdown.heading.5",      { link = "@markdown.heading.3" })
  hl("@markdown.heading.6",      { link = "@markdown.heading.3" })
  hl("@markdown.quote",          { fg = c.comment })
  hl("@markdown.list",           { fg = c.vert_split })
  hl("@markdown.code",           { fg = c.green_dim })
  hl("@markdown.code_block",     { fg = c.green_dim })
  hl("@markdown.link",           { fg = c.blue_light, underline = true })
  hl("@markdown.link.text",      { fg = c.teal })

  -- Diff
  hl("@diff.plus",               { fg = c.green })
  hl("@diff.minus",              { fg = c.red })
  hl("@diff.delta",              { fg = c.cyan })
end