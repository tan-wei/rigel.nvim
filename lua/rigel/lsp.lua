-- LSP semantic token highlight groups
-- These are used by built-in LSP client (vim.lsp.semantic_tokens)

---@param hl fun(group: string, values: vim.api.keyset.highlight)
---@param c RigelPalette
---@param config RigelOpts
---@param bg string
---@param bg_dark string
---@param bold fun(): string
---@param italic fun(): string
return function(hl, c, config, bg, bg_dark, bold, italic)
  hl("@lsp.type.class",           { link = "@type" })
  hl("@lsp.type.comment",         { link = "@comment" })
  hl("@lsp.type.decorator",       { link = "@attribute" })
  hl("@lsp.type.enum",            { link = "@type" })
  hl("@lsp.type.enumMember",      { link = "@constant" })
  hl("@lsp.type.function",        { link = "@function" })
  hl("@lsp.type.interface",       { link = "@type" })
  hl("@lsp.type.keyword",         { link = "@keyword" })
  hl("@lsp.type.macro",           { link = "@function.macro" })
  hl("@lsp.type.method",          { link = "@method" })
  hl("@lsp.type.modifier",        { link = "@keyword.storage" })
  hl("@lsp.type.namespace",       { link = "@namespace" })
  hl("@lsp.type.number",          { link = "@number" })
  hl("@lsp.type.operator",        { link = "@operator" })
  hl("@lsp.type.parameter",       { link = "@parameter" })
  hl("@lsp.type.property",        { link = "@property" })
  hl("@lsp.type.selfKeyword",     { fg = c.teal, italic = true })
  hl("@lpl.type.selfKeyword",     { link = "@lsp.type.selfKeyword" })
  hl("@lsp.type.struct",          { link = "@type" })
  hl("@lsp.type.typeAlias",       { link = "@type.definition" })
  hl("@lsp.type.typeParameter",   { link = "@type.definition" })
  hl("@lsp.type.variable",        { link = "@variable" })

  -- LSP semantic token modifiers
  hl("@lsp.mod.readonly",         { link = "@constant" })
  hl("@lsp.mod.static",           { italic = true })
  hl("@lsp.mod.deprecated",       { strikethrough = true })
  hl("@lsp.mod.abstract",         { italic = true })
  hl("@lsp.mod.async",            { italic = true })
  hl("@lsp.mod.modification",     { link = "@variable" })
  hl("@lsp.mod.documentation",    { link = "@comment" })
  hl("@lsp.mod.defaultLibrary",   { link = "@variable.builtin" })
end