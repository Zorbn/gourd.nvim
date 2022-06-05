local foreground = "#a89984"
local variable   = "#ebdbb2"
local background = "#2d2a2e"
local dark_bg   = "#221f22"
local keyword    = "#d3869b"
local operator   = "#8ec07c"
local method     = "#83a598"
local class      = "#83a598"
local number     = "#fe8019"
local comment    = "#a89984"
local string     = "#b8bb26"
local negative   = "#cc241d"
local selection  = "#3c463d"
local current_bg = "#332f32"
local current_fg = "#ebdbb2"
local line_num   = "#665c54"

local colors = {
    Normal = {bg = background, fg = foreground},
    ColorColumn = {},
    Comment = {fg = comment},
    Conceal = {bg = foreground, fg = dark_bg},
    Constant = {fg = class},
    Cursor = {},
    CursorColumn = {bg = current_bg},
    CursorIM = {},
    CursorLine = {bg = current_bg},
    CursorLineNr = {bg = current_bg, fg = current_fg},
    DiagnosticError = {fg = negative},
    DiagnosticInfo = {fg = comment},
    DiagnosticWarn = {fg = string},
    DiffAdd = {fg = comment},
    DiffChange = {fg = keyword},
    DiffDelete = {fg = negative},
    DiffText = {bg = keyword, fg = background},
    Directory = {fg = keyword},
    Error = {bg = negative, fg = background},
    ErrorMsg = {bg = negative, fg = background},
    FoldColumn = {bg = comment, fg = background},
    Folded = {bg = comment, fg = background},
    Function = {fg = method},
    Identifier = {fg = variable},
    LineNr = {fg = line_num},
    MatchParen = {bg = keyword, fg = background},
    ModeMsg = {fg = method},
    NonText = {fg = background},
    NormalFloat = {},
    NormalNC = {},
    Number = {fg = number},
    Pmenu = {bg = dark_bg},
    PmenuSbar = {bg = dark_bg, fg = dark_bg},
    PmenuSel = {bg = method, fg = background},
    PmenuThumb = {bg = foreground, fg = foreground},
    PreProc = {fg = keyword},
    Question = {fg = method},
    QuickFixLine = {bg = string, fg = background},
    Search = {bg = string, fg = background},
    SignColumn = {bg = comment, fg = background},
    Special = {fg = keyword},
    SpecialKey = {fg = class},
    Statement = {fg = keyword},
    StatusLine = {bg = dark_bg, fg = foreground},
    StatusLineTerm = {bg = dark_bg, fg = foreground},
    StatusLineNC = {bg = background, fg = foreground},
    StatusLineTermNC = {bg = background, fg = foreground},
    String = {fg = string},
    Substitute = {fg = string},
    TSBoolean = {fg = number},
    TSField = {fg = variable},
    TSMethod = {fg = method},
    TSConstructor = {fg = method},
    TSNumber = {fg = number},
    TSOperator = {fg = operator},
    TSParameter = {fg = foreground},
    TSPunctBracket = {fg = foreground},
    TSPunctDelimiter = {fg = foreground},
    TSPunctSpecial = {fg = foreground},
    TSString = {fg = string},
    TSStringEscape = {fg = keyword},
    TSText = {fg = foreground},
    TSType = {fg = class},
    TSTypeBuiltin = {fg = keyword},
    TSVariable = {fg = variable},
    TSVariableBuiltin = {fg = class},
    Title = {fg = class},
    Todo = {fg = string},
    Type = {fg = keyword},
    Visual = {bg = selection},
    WarningMsg = {fg = negative},
    Whitespace = {fg = keyword},
    WildMenu = {bg = method, fg = background},
    Winseparator = {fg = dark_bg},
    lCursor = {},
}

-- Prepare to apply the theme.
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.g.colors_name = "gourd"

vim.opt.cursorline = true

vim.opt.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
}

-- Apply highlight groups.
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end

-- vim.api.nvim_set_hl doesn't redraw, so one normal vim command is needed.
vim.cmd("highlight Todo guifg=" .. string)
