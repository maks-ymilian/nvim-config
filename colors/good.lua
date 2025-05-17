local c =
{
	white = "#DCDCDC",

	bg = "#201f38",
	-- bg = "#1e1d35",
	-- bg = "#201F31",

	bgd1 = "#1c1b31", -- cursor line
	bgd2 = "#151424", -- floating window

	bgl0 = "#51506d", -- visual
	bgl1 = "#8B7C9E", -- comment
	bgl2 = "#B9ADC5", -- #define

	blue = "#569CD6",
	light_blue = "#9CDCFE",
	green = "#6CDEC3",
	light_green = "#B5CEA8",
	yellow = "#E3E2B2",
	red = "#E5809F",
	purple = "#A68EC5",
	orange = "#D69D85",
	dark_green = "#666323",

	unknown = "#ff00ff",
}

local function set_terminal_colors()
    vim.g.terminal_color_0 =  "#222222"
    vim.g.terminal_color_1 =  "#880000"
    vim.g.terminal_color_2 =  "#008800"
    vim.g.terminal_color_3 =  ""
    vim.g.terminal_color_4 =  ""
    vim.g.terminal_color_5 =  ""
    vim.g.terminal_color_6 =  ""
    vim.g.terminal_color_7 =  ""
    vim.g.terminal_color_8 =  ""
    vim.g.terminal_color_9 =  ""
    vim.g.terminal_color_10 = ""
    vim.g.terminal_color_11 = ""
    vim.g.terminal_color_12 = ""
    vim.g.terminal_color_13 = ""
    vim.g.terminal_color_14 = ""
    vim.g.terminal_color_15 = ""
end

local function set_color(group, fg, bg, underline)
	vim.api.nvim_set_hl(0, group, { bg = bg, fg = fg, undercurl = underline})
end

local function set_vim_colors()
	-- background
	set_color("Normal", nil, c.bg)
	set_color("EndOfBuffer", c.bg, c.bg)

	set_color("CursorColumn", nil, c.bgd1)
	set_color("CursorLine", nil, c.bgd1)
	set_color("CursorLineNr", c.white, c.bgd1)
	set_color("CursorLineFold", c.unknown, c.unknown)
	set_color("CursorLineSign", nil, c.bgd1)

	-- netrw
	set_color("Directory", c.red)
	set_color("Function", c.red)
	set_color("Identifier", c.white)
	set_color("Statement", c.white)

	set_color("StatusLine", c.bgd2, c.bgl2)
	set_color("StatusLineNC", c.bgl2, c.bgd2)
	-- set_color("StatusLineTerm", c.bgd1, c.bgl2)
	-- set_color("StatusLineTermNC", c.bgl2, c.bgd1)

	set_color("LineNr", c.bgl1)
	set_color("LineNrAbove", c.bgl1, c.bgd1)
	set_color("LineNrBelow", c.bgl1, c.bgd1)
	set_color("SignColumn", nil, c.bgd1)
	set_color("FoldColumn", c.bgl2, c.bgd1)

	set_color("Visual", nil, c.bgl0)
	set_color("VisualNOS", c.unknown, c.unknown)
	set_color("MatchParen", nil, c.bgl0)

	set_color("Folded", c.bgl2, c.bgd1)

	set_color("NonText", c.bgl1)
	set_color("SpecialKey", c.bgl1)

	-- listchars (tabs)
	set_color("Whitespace", c.bgl0)

	-- command bar
	-- set_color("MsgArea", nil, c.bg)
	-- set_color("MsgSeparator", nil, c.bgl2)
	set_color("ErrorMsg", c.red)
	set_color("WarningMsg", c.yellow)
	set_color("ModeMsg", c.red)
	set_color("MoreMsg", c.bgl1)
	set_color("Question", c.bgl1)

	set_color("Pmenu", c.bgl2, c.bgd2)
	-- set_color("PmenuSel", c.bgd1, c.bgl2)
	-- set_color("PmenuKind", c.unknown, c.unknown)
	-- set_color("PmenuKindSel", c.unknown, c.unknown)
	-- set_color("PmenuExtra", c.unknown, c.unknown)
	-- set_color("PmenuExtraSel", c.unknown, c.unknown)
	-- set_color("PmenuSbar", c.unknown, c.unknown)
	-- set_color("PmenuThumb", c.unknown, c.unknown)
	-- set_color("PmenuMatch", c.unknown, c.unknown)
	-- set_color("PmenuMatchSel", c.unknown, c.unknown)
	--
	-- default because i cant find a good looking colour
	-- set_color("Search", c.white, c.dark_green)
	-- set_color("CurSearch", c.white, c.dark_green)
	-- set_color("IncSearch", c.unknown, c.unknown)

	-- window separator
	set_color("WinSeparator", c.bgl1)

	-- text in unfocused window
	-- set_color("NormalNC", c.white)

	-- vimdoc
	set_color("Title", c.white)
	set_color("Special", c.red)

	-- set_color("TermCursor", c.bg, c.white)

	set_color("NormalFloat", nil, c.bgd2)
	-- set_color("FloatBorder", c.unknown, c.unknown)
	-- set_color("FloatTitle", c.unknown, c.unknown)
	-- set_color("FloatFooter", c.unknown, c.unknown)

	-- current grep result
	set_color("QuickFixLine", c.yellow)

	-- autofill rest
	-- set_color("ComplMatchIns", c.unknown, c.unknown)

	-- top bar for tabs
	set_color("TabLine", c.bgl1, c.bgd2)
	set_color("TabLineFill", c.bgl1, c.bgd2)
	set_color("TabLineSel", nil, c.bgd1)

	set_color("ColorColumn", c.unknown, c.unknown)
	set_color("Conceal", c.unknown, c.unknown)
	set_color("Cursor", c.unknown, c.unknown)
	set_color("lCursor", c.unknown, c.unknown)
	set_color("CursorIM", c.unknown, c.unknown)
	set_color("DiffAdd", c.unknown, c.unknown)
	set_color("DiffChange", c.unknown, c.unknown)
	set_color("DiffDelete", c.unknown, c.unknown)
	set_color("DiffText", c.unknown, c.unknown)
	set_color("Substitute", c.unknown, c.unknown)
	set_color("SnippetTabstop", c.unknown, c.unknown)
	set_color("SpellBad", c.unknown, c.unknown)
	set_color("SpellCap", c.unknown, c.unknown)
	set_color("SpellLocal", c.unknown, c.unknown)
	set_color("SpellRare", c.unknown, c.unknown)
	set_color("WildMenu", c.unknown, c.unknown)
	set_color("WinBar", c.unknown, c.unknown)
	set_color("WinBarNC", c.unknown, c.unknown)
	set_color("Menu", c.unknown, c.unknown)
	set_color("Scrollbar", c.unknown, c.unknown)
	set_color("Tooltip", c.unknown, c.unknown)
	set_color("VertSplit", c.unknown, c.unknown)
end

local function set_colors()
	set_vim_colors()

	set_color("DiagnosticUnderlineError", "#f24646", nil, true);

	set_color("@keyword", c.blue)
	set_color("@keyword.import", c.blue)
	set_color("@keyword.conditional.ternary", c.white)
	set_color("@keyword.directive", c.bgl2)
	set_color("@keyword.directive.define", c.bgl2)
	set_color("@constant.builtin.java", c.blue)
	set_color("@function.builtin.java", c.blue)
	set_color("@variable.builtin.java", c.blue)
	set_color("@lsp.type.modifier.java", c.blue)
	set_color("@keyword.import.c", c.bgl2)
	set_color("@keyword.import.cpp", c.bgl2)

	set_color("@function", c.yellow)
	set_color("@function.builtin", c.yellow)
	set_color("@function.call", c.yellow)
	set_color("@function.macro", c.red)
	set_color("@function.method", c.yellow)
	set_color("@function.method.call", c.yellow)

	set_color("@constructor", c.white)
	set_color("@operator", c.white)

	set_color("@type", c.green)
	set_color("@type.builtin", c.blue)
	set_color("@type.definition", c.green)

	set_color("@boolean", c.blue)
	set_color("@number", c.light_green)
	set_color("@number.float", c.light_green)

	set_color("@string", c.orange)
	set_color("@string.regexp", c.orange)
	set_color("@string.escape", c.orange)
	set_color("@string.special", c.orange)
	set_color("@string.special.symbol", c.orange)
	set_color("@string.special.path", c.orange)
	set_color("@string.special.url", c.orange)

	set_color("@character", c.orange)
	set_color("@character.special", c.orange)

	set_color("@variable", c.white)
	set_color("@variable.builtin", c.white)
	set_color("@variable.member", c.purple)

	set_color("@property", c.purple)

	set_color("Comment", c.bgl1)
	set_color("@comment", c.bgl1)
	set_color("@comment.error", c.bgl2)
	set_color("@comment.warning", c.bgl2)
	set_color("@comment.todo", c.bgl2)
	set_color("@comment.note", c.bgl2)

	set_color("@punctuation", c.white)
	set_color("@punctuation.bracket", c.white)
	set_color("@punctuation.delimiter", c.white)
	set_color("@punctuation.special", c.white)

	set_color("@constant", c.white)
	set_color("@constant.builtin", c.white)
	set_color("@constant.macro", c.red)
end

local function apply_colorscheme()
    vim.api.nvim_command("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "good-nvim"
    set_terminal_colors()
	set_colors();
end

apply_colorscheme()
