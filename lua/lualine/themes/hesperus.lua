local config = require("hesperus.config")
local colorscheme = require("hesperus.colorscheme").pick()

local bg = (config.transparent and colorscheme.sidebarBackground) or colorscheme.editorBackground

local M = {}

M.normal = {
	a = { bg = colorscheme.syntaxFunction, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.insert = {
	a = { bg = colorscheme.linkText, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.terminal = {
	a = { bg = colorscheme.specialKeyword, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.command = {
	a = { bg = colorscheme.specialKeyword, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.visual = {
	a = { bg = colorscheme.syntaxKeyword, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.replace = {
	a = { bg = colorscheme.warningText, fg = bg, gui = "bold" },
	b = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	c = { bg = bg, fg = colorscheme.mainText },
	x = { bg = bg, fg = colorscheme.mainText },
	y = { bg = colorscheme.sidebarBackground, fg = colorscheme.mainText },
	z = { bg = colorscheme.popupBackground, fg = colorscheme.mainText },
}

M.inactive = {
	a = { bg = colorscheme.inactiveText, fg = colorscheme.sidebarBackground },
	b = { bg = bg, fg = colorscheme.inactiveText },
	c = { bg = bg, fg = colorscheme.disabledText },
	x = { bg = bg, fg = colorscheme.disabledText },
	y = { bg = bg, fg = colorscheme.inactiveText },
	z = { bg = colorscheme.sidebarBackground, fg = colorscheme.inactiveText },
}

return M
