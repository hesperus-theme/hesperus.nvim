local bufferline = require("hesperus.integrations.bufferline")
local cmp = require("hesperus.integrations.cmp")
local colorscheme_module = require("hesperus.colorscheme")
local ibl = require("hesperus.integrations.ibl")
local config = require("hesperus.config")
local utils = require("hesperus.utils")
local theme = {}

local function set_terminal_colors(colorscheme)
	local t = colorscheme.terminal

	vim.g.terminal_color_0 = t.black
	vim.g.terminal_color_1 = t.red
	vim.g.terminal_color_2 = t.green
	vim.g.terminal_color_3 = t.yellow
	vim.g.terminal_color_4 = t.blue
	vim.g.terminal_color_5 = t.magenta
	vim.g.terminal_color_6 = t.cyan
	vim.g.terminal_color_7 = t.white
	vim.g.terminal_color_8 = t.bright_black
	vim.g.terminal_color_9 = t.bright_red
	vim.g.terminal_color_10 = t.bright_green
	vim.g.terminal_color_11 = t.bright_yellow
	vim.g.terminal_color_12 = t.bright_blue
	vim.g.terminal_color_13 = t.bright_magenta
	vim.g.terminal_color_14 = t.bright_cyan
	vim.g.terminal_color_15 = t.bright_white

	vim.g.terminal_color_background = t.background
	vim.g.terminal_color_foreground = t.foreground
end

local function set_groups(colorscheme)
	local bg = config.transparent and "NONE" or colorscheme.background_low
	local diff_add = utils.shade(colorscheme.ice_dark, 0.5, colorscheme.background_low)
	local diff_delete = utils.shade(colorscheme.red, 0.5, colorscheme.background_low)
	local diff_change = utils.shade(colorscheme.blue_dark, 0.5, colorscheme.background_low)
	local diff_text = utils.shade(colorscheme.brown, 0.5, colorscheme.background_low)

	local groups = {
		Normal = { fg = colorscheme.foreground, bg = bg },
		SnacksNormal = { fg = colorscheme.foreground, bg = bg },
		SnacksNormalNC = { fg = colorscheme.foreground, bg = colorscheme.background },
		SnacksPicker = { fg = colorscheme.foreground, bg = colorscheme.background },
		SnacksPickerBox = { fg = colorscheme.foreground, bg = bg },
		LineNr = { fg = colorscheme.grey },
		ColorColumn = {
			bg = utils.shade(colorscheme.magenta_dark, 0.5, colorscheme.background_low),
		},
		Conceal = {},
		Cursor = { fg = colorscheme.background_low, bg = colorscheme.foreground },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = utils.shade(colorscheme.magenta_dark, 0.056, colorscheme.background_higher) },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = colorscheme.ice_dark },
		DiffAdd = { bg = bg, fg = diff_add },
		DiffChange = { bg = bg, fg = diff_change },
		DiffDelete = { bg = bg, fg = diff_delete },
		DiffText = { bg = bg, fg = diff_text },
		EndOfBuffer = { fg = colorscheme.background_high },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		OkMsg = { fg = colorscheme.ice_dark },
		PreInsert = { fg = colorscheme.ice_dark },
		Added = { fg = colorscheme.ice_dark },
		ErrorMsg = { fg = colorscheme.red },
		VertSplit = { fg = colorscheme.background_low, bg = bg },
		Winseparator = { fg = colorscheme.background_low, bg = bg },
		SnacksWinSeparator = { fg = "NONE", bg = "NONE" },
		SignColumn = { link = "Normal" },
		Folded = { fg = colorscheme.magenta, bg = colorscheme.background_higher },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(colorscheme.magenta, colorscheme.background_low, math.abs(0.30)),
			fg = colorscheme.background_low,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = colorscheme.magenta, bold = true, bg = "NONE" },
		MatchParen = { fg = colorscheme.background_low, bg = colorscheme.magenta },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		MoreMsg = { fg = colorscheme.ice_dark },
		NonText = { fg = utils.shade(colorscheme.background_low, 0.30) },
		NormalFloat = {
			bg = config.transparent
				and utils.shade(colorscheme.background, 0.5, "NONE")
				or colorscheme.background_high,
		},
		FloatBorder = { fg = colorscheme.background_higher },
		FloatTitle = { fg = colorscheme.ice, bold = true },
		FloatFooter = { fg = colorscheme.grey },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = colorscheme.background_higher },
		PmenuSbar = {
			bg = utils.shade(colorscheme.magenta_dark, 0.5, colorscheme.background_low),
		},
		PmenuThumb = { bg = utils.shade(colorscheme.background_low, 0.20) },
		Question = { fg = colorscheme.ice_dark },
		QuickFixLine = { fg = colorscheme.magenta },
		SpecialKey = { fg = colorscheme.brown },
		StatusLine = { fg = colorscheme.foreground, bg = bg },
		StatusLineNC = {
			fg = colorscheme.grey,
			bg = colorscheme.background_high,
		},
		WinBar = { fg = colorscheme.foreground, bg = bg },
		WinBarNC = { fg = colorscheme.grey, bg = bg },
		TabLine = {
			bg = colorscheme.background_high,
			fg = colorscheme.grey,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = colorscheme.background_low,
			fg = colorscheme.ice,
		},
		CurSearch = { bg = colorscheme.magenta, fg = colorscheme.background_low },
		Search = { bg = utils.shade(colorscheme.magenta, 0.40, colorscheme.background_low) },
		SpellBad = { undercurl = true, sp = colorscheme.red },
		SpellCap = { undercurl = true, sp = colorscheme.ice_dark },
		SpellLocal = { undercurl = true, sp = colorscheme.magenta },
		SpellRare = { undercurl = true, sp = colorscheme.brown },
		Title = { fg = colorscheme.magenta, bold = true },
		Visual = {
			bg = utils.shade(colorscheme.magenta_dark, 0.20, colorscheme.background_low),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = colorscheme.brown },
		Whitespace = { fg = colorscheme.brown_dark },
		WildMenu = { bg = colorscheme.background_higher },
		Comment = {
			fg = colorscheme.grey,
			italic = config.italics.comments or false,
		},

		String = {
			fg = colorscheme.ice,
			italic = config.italics.strings or false,
		},
		Character = { fg = colorscheme.ice },
		Number = { fg = colorscheme.magenta, bold = true },
		Boolean = { fg = colorscheme.magenta_dark },
		Float = { link = "Number" },

		Identifier = { fg = colorscheme.foreground },
		Function = { fg = colorscheme.blue },
		Method = { fg = colorscheme.yellow_dark },
		Property = { fg = colorscheme.ice_dark },
		Field = { link = "Property" },
		Parameter = { fg = colorscheme.foreground },
		Statement = { fg = colorscheme.magenta_dark },
		Conditional = { fg = colorscheme.magenta_dark },
		Label = { fg = colorscheme.ice_dark },
		Operator = { fg = colorscheme.blue },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = colorscheme.red },
		Constant = { fg = colorscheme.yellow },

		PreProc = { link = "Keyword" },
		Define = { fg = colorscheme.magenta_dark },
		Macro = { link = "Define" },
		PreCondit = { fg = colorscheme.ice_dark },

		Type = { fg = colorscheme.ice_dark },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		Attribute = { link = "Character" },
		Punctuation = { fg = colorscheme.brown },
		Special = { fg = colorscheme.yellow_dark },

		SpecialChar = { fg = colorscheme.red },
		Tag = { fg = colorscheme.ice },
		Delimiter = { fg = colorscheme.brown },
		Debug = { fg = colorscheme.magenta_dark },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = colorscheme.background_low },
		Error = { link = "ErrorMsg" },
		Todo = { fg = colorscheme.brown, bold = true },

		Changed = { fg = colorscheme.magenta_dark },
		Removed = { fg = colorscheme.red },

		DiagnosticOk = { fg = colorscheme.ice_dark },
		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colorscheme.ice_dark },
		DiagnosticHint = { fg = colorscheme.magenta },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },

		["@text"] = { fg = colorscheme.foreground },
		["@text.literal"] = { link = "Property" },
		["@text.strong"] = { link = "Bold" },
		["@text.italic"] = { link = "Italic" },
		["@text.title"] = { link = "Keyword" },
		["@text.uri"] = {
			fg = colorscheme.ice_dark,
			sp = colorscheme.ice_dark,
			underline = true,
		},
		["@text.underline"] = { link = "Underlined" },
		["@symbol"] = { fg = colorscheme.brown },
		["@text.todo"] = { link = "Todo" },
		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Punctuation" },
		["@punctuation.bracket"] = { fg = colorscheme.brown },
		["@punctuation.delimiter"] = { fg = colorscheme.magenta_dark },
		["@punctuation.terminator.statement"] = { link = "Delimiter" },
		["@punctuation.special"] = { fg = colorscheme.ice },
		["@punctuation.separator.keyvalue"] = { fg = colorscheme.ice },

		["@text.diff.add"] = { fg = colorscheme.ice_dark },
		["@text.diff.delete"] = { fg = colorscheme.red },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = colorscheme.magenta_dark },
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = utils.shade(colorscheme.ice, 0.45) },
		["@string.special"] = { fg = utils.shade(colorscheme.magenta_dark, 0.45) },
		["@number"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		["@function"] = {
			link = "Function",
			italic = config.italics.functions or false,
		},
		["@function.call"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		["@parameter"] = { link = "Parameter" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Property" },
		["@property"] = { link = "Property" },
		["@constructor"] = { fg = colorscheme.magenta_dark },
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@exception"] = { link = "Exception" },
		["@variable"] = {
			fg = colorscheme.brown,
			italic = config.italics.variables or false,
		},
		["@variable.builtin"] = { fg = colorscheme.magenta_dark },
		["@variable.member"] = { fg = colorscheme.blue },
		["@variable.parameter"] = {
			fg = colorscheme.foreground,
			italic = config.italics.variables or false,
		},
		["@type"] = { link = "Type" },
		["@type.definition"] = { fg = colorscheme.ice_dark },
		["@type.builtin"] = { fg = colorscheme.ice },
		["@type.qualifier"] = { fg = colorscheme.magenta_dark },
		["@keyword"] = { link = "Keyword" },
		["@namespace"] = { link = "Type" },
		["@annotation"] = { link = "Label" },
		["@debug"] = { fg = colorscheme.magenta_dark },
		["@tag"] = { link = "Tag" },
		["@tag.builtin"] = { link = "Tag" },
		["@tag.delimiter"] = { fg = colorscheme.magenta_dark },
		["@tag.attribute"] = { fg = colorscheme.ice_dark },
		["@tag.jsx.element"] = { fg = colorscheme.blue_dark },
		["@attribute"] = { fg = colorscheme.ice_dark },
		["@error"] = { link = "Error" },
		["@warning"] = { link = "WarningMsg" },
		["@info"] = { fg = colorscheme.ice_dark },

		["@label.json"] = { fg = colorscheme.magenta_dark },
		["@label.help"] = { link = "@text.uri" },
		["@text.uri.html"] = { underline = true },

		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { fg = colorscheme.magenta },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@text" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.macro"] = { link = "@label" },
		["@lsp.type.decorator"] = { link = "@label" },
		["@lsp.typemod.function.declaration"] = { link = "@function" },
		["@lsp.typemod.function.readonly"] = { link = "@function" },
	}

	groups = vim.tbl_extend("force", groups, cmp.highlights(colorscheme))
	groups = vim.tbl_extend("force", groups, ibl.highlights(colorscheme))
	groups = vim.tbl_extend("force", groups, bufferline.highlights(colorscheme, config))

	groups =
		vim.tbl_extend("force", groups, type(config.overrides) == "function" and config.overrides() or config.overrides)

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function theme.setup(values)
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })
end

function theme.colorscheme()
	if vim.version().minor < 8 then
		vim.notify(
			"Neovim 0.8+ is required for hesperus colorscheme",
			vim.log.levels.ERROR,
			{ title = "Hesperus Theme" }
		)
		return
	end

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "hesperus"

	local colorscheme = colorscheme_module.pick()

	set_terminal_colors(colorscheme)
	set_groups(colorscheme)
end

return theme
