-- Run this after: :colorscheme rigel
-- :luafile ~/.config/nvim/lua/rigel-nvim/lua/rigel/compare.lua

-- Parse original rigel.vim
local function parse_original(filename)
  local file = io.open(filename, "r")
  if not file then
    print("ERROR: cannot open " .. filename)
    print("Run: !curl -sL https://raw.githubusercontent.com/Rigellute/rigel/master/colors/rigel.vim -o /tmp/rigel_original.vim")
    return {}
  end
  local content = file:read("*a")
  file:close()

  local raw = {}
  for line in content:gmatch("[^\r\n]+") do
    -- Skip: hi link Group Other
    local link_name, link_target = line:match("^hi%s+link%s+(%S+)%s+(%S+)")
    if link_name and link_target then
      raw[link_name] = "link->" .. link_target
    else
      -- hi GroupName guifg=#xxxxxx guibg=#xxxxxx gui=xxx
      local name = line:match("^hi!?%s+(%S+)")
      if name and name ~= "clear" and name ~= "link" then
        local fg = line:match("guifg=([%w#]+)") or "NONE"
        local bg = line:match("guibg=([%w#]+)") or "NONE"
        raw[name] = string.format("%-7s %-7s", fg, bg)
      end
    end
  end
  return raw
end

-- Get current highlight via :hi command output (more reliable)
local function get_current_hi(name)
  local ok, result = pcall(vim.api.nvim_exec2, "hi " .. name, { output = true })
  if not ok or not result or not result.output or result.output == "" then
    return "---   --- ", false
  end
  local line = result.output
  -- Check for "links to"
  local linked = line:match("links to (%S+)")
  if linked then
    return string.format("link->%-10s", linked), true
  end
  -- Extract guifg and guibg
  local fg = line:match("guifg=([%w#]+)") or "NONE"
  local bg = line:match("guibg=([%w#]+)") or "NONE"
  return string.format("%-7s %-7s", fg, bg), false
end

local original = parse_original("/tmp/rigel_original.vim")

-- Key groups to compare
local groups = {
  "Normal", "ColorColumn", "Cursor", "CursorColumn", "CursorLine",
  "CursorLineNr", "LineNr", "SignColumn", "Conceal", "Visual",
  "MatchParen", "Search", "IncSearch",
  "ErrorMsg", "WarningMsg", "ModeMsg", "MoreMsg", "Question",
  "VertSplit", "StatusLine", "StatusLineNC",
  "TabLine", "TabLineFill", "TabLineSel", "Title", "WildMenu",
  "Folded", "FoldColumn",
  "DiffAdd", "DiffChange", "DiffDelete", "DiffText",
  "SpellBad",
  "Pmenu", "PmenuSel",
  "NonText", "SpecialKey", "Directory", "EndOfBuffer",
  "Comment", "Constant", "String", "Character", "Number", "Float", "Boolean",
  "Identifier", "Function", "Statement",
  "Keyword", "Exception",
  "Include", "Define",
  "Type",
  "Structure", "Typedef", "Tag",
  "SpecialComment", "Debug", "Underlined",
  "Error", "Todo",
}

print("")
print(string.rep("=", 64))
print("  RIGEL COLORSCHEME COMPARISON")
print(string.rep("=", 64))
print("")
print(string.format("%-16s  %-16s  %-16s  %s", "GROUP", "ORIGINAL", "PORT", "MATCH?"))
print(string.rep("-", 64))

local pass = 0
local fail = 0

for _, name in ipairs(groups) do
  local orig = original[name]
  if not orig then
    orig = "---   --- "
  end

  local cur, is_link = get_current_hi(name)

  -- Only compare actual color groups, not links
  local matched = false
  if orig:find("link->") or is_link then
    -- Both are links, or original is link - skip strict comparison
    matched = true
    pass = pass + 1
  elseif not orig:find("---") then
    -- Both have explicit colors
    local orig_fg = orig:match("(%S+)") or ""
    local cur_fg = cur:match("(%S+)") or ""
    local orig_bg = orig:match("%s+(%S+)") or ""
    local cur_bg = cur:match("%s+(%S+)") or ""
    if (orig_fg == cur_fg or (orig_fg == "NONE" and cur_fg == "")) and
       (orig_bg == cur_bg or (orig_bg == "NONE" and cur_bg == "")) then
      matched = true
      pass = pass + 1
    else
      matched = false
      fail = fail + 1
    end
  else
    -- Original doesn't have this group, port has it (new addition) - count as pass
    matched = true
    pass = pass + 1
  end

  local icon = matched and "✓" or "✗"
  print(string.format("%-16s  %-16s  %-16s  %s", name, orig, cur, icon))
end

print(string.rep("-", 64))
print(string.format("  MATCH: %d   MISMATCH: %d   TOTAL: %d", pass, fail, pass + fail))
print(string.rep("=", 64))