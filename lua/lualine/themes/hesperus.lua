local config = require("hesperus.config")
local colorscheme = require("hesperus.colorscheme").pick()

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local M = {}

M.normal = {
	a = { bg = colorscheme.blue_dark, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.insert = {
	a = { bg = colorscheme.magenta_dark, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.terminal = {
	a = { bg = colorscheme.ice_dark, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.command = {
	a = { bg = colorscheme.brown, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.visual = {
	a = { bg = colorscheme.magenta, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.replace = {
	a = { bg = colorscheme.red, fg = bg, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = colorscheme.background_high, fg = colorscheme.background_high },
	z = { bg = colorscheme.background_higher, fg = colorscheme.background_higher },
}

M.inactive = {
	a = { bg = colorscheme.grey, fg = colorscheme.background_low },
	b = { bg = bg, fg = bg },
	c = { bg = bg, fg = bg },
	x = { bg = bg, fg = bg },
	y = { bg = bg, fg = bg },
	z = { bg = colorscheme.background_high, fg = colorscheme.background_high },
}

return M
