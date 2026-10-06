local config = require("hesperus.config")
local colorscheme = require("hesperus.colorscheme").pick()

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local M = {}

M.normal = {
	a = { bg = colorscheme.blue_dark, fg = colorscheme.blue_dark, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.blue_dark },
	c = { bg = bg, fg = colorscheme.blue_dark },
	x = { bg = bg, fg = colorscheme.blue_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.blue_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.blue_dark },
}

M.insert = {
	a = { bg = colorscheme.magenta_dark, fg = colorscheme.magenta_dark, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.magenta_dark },
	c = { bg = bg, fg = colorscheme.magenta_dark },
	x = { bg = bg, fg = colorscheme.magenta_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.magenta_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.magenta_dark },
}

M.terminal = {
	a = { bg = colorscheme.ice_dark, fg = colorscheme.ice_dark, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	c = { bg = bg, fg = colorscheme.ice_dark },
	x = { bg = bg, fg = colorscheme.ice_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.ice_dark },
}

M.command = {
	a = { bg = colorscheme.brown, fg = colorscheme.brown, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.brown },
	c = { bg = bg, fg = colorscheme.brown },
	x = { bg = bg, fg = colorscheme.brown },
	y = { bg = colorscheme.background_high, fg = colorscheme.brown },
	z = { bg = colorscheme.background_higher, fg = colorscheme.brown },
}

M.visual = {
	a = { bg = colorscheme.magenta, fg = colorscheme.magenta, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	c = { bg = bg, fg = colorscheme.magenta },
	x = { bg = bg, fg = colorscheme.magenta },
	y = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	z = { bg = colorscheme.background_higher, fg = colorscheme.magenta },
}

M.replace = {
	a = { bg = colorscheme.red, fg = colorscheme.red, gui = "bold" },
	b = { bg = colorscheme.background_high, fg = colorscheme.red },
	c = { bg = bg, fg = colorscheme.red },
	x = { bg = bg, fg = colorscheme.red },
	y = { bg = colorscheme.background_high, fg = colorscheme.red },
	z = { bg = colorscheme.background_higher, fg = colorscheme.red },
}

M.inactive = {
	a = { bg = colorscheme.grey, fg = colorscheme.grey },
	b = { bg = bg, fg = colorscheme.grey },
	c = { bg = bg, fg = colorscheme.grey },
	x = { bg = bg, fg = colorscheme.grey },
	y = { bg = bg, fg = colorscheme.grey },
	z = { bg = colorscheme.background_high, fg = colorscheme.grey },
}

return M
