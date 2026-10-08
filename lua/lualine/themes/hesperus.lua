local config = require("hesperus.config")
local colorscheme = require("hesperus.colorscheme").pick()

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local M = {}

M.normal = {
	a = { bg = colorscheme.grey, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.grey },
	c = { bg = bg, fg = colorscheme.grey },
	x = { bg = bg, fg = colorscheme.grey },
	y = { bg = colorscheme.background_high, fg = colorscheme.grey },
	z = { bg = colorscheme.background_higher, fg = colorscheme.grey },
}

M.insert = {
	a = { bg = colorscheme.blue, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.blue },
	c = { bg = bg, fg = colorscheme.blue },
	x = { bg = bg, fg = colorscheme.blue },
	y = { bg = colorscheme.background_high, fg = colorscheme.blue },
	z = { bg = colorscheme.background_higher, fg = colorscheme.blue },
}

M.terminal = {
	a = { bg = colorscheme.ice_dark, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	c = { bg = bg, fg = colorscheme.ice_dark },
	x = { bg = bg, fg = colorscheme.ice_dark },
	y = { bg = colorscheme.background_high, fg = colorscheme.ice_dark },
	z = { bg = colorscheme.background_higher, fg = colorscheme.ice_dark },
}

M.command = {
	a = { bg = colorscheme.brown, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.brown },
	c = { bg = bg, fg = colorscheme.brown },
	x = { bg = bg, fg = colorscheme.brown },
	y = { bg = colorscheme.background_high, fg = colorscheme.brown },
	z = { bg = colorscheme.background_higher, fg = colorscheme.brown },
}

M.visual = {
	a = { bg = colorscheme.magenta, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	c = { bg = bg, fg = colorscheme.magenta },
	x = { bg = bg, fg = colorscheme.magenta },
	y = { bg = colorscheme.background_high, fg = colorscheme.magenta },
	z = { bg = colorscheme.background_higher, fg = colorscheme.magenta },
}

M.replace = {
	a = { bg = colorscheme.red, fg = colorscheme.background },
	b = { bg = colorscheme.background_high, fg = colorscheme.red },
	c = { bg = bg, fg = colorscheme.red },
	x = { bg = bg, fg = colorscheme.red },
	y = { bg = colorscheme.background_high, fg = colorscheme.red },
	z = { bg = colorscheme.background_higher, fg = colorscheme.red },
}

M.inactive = {
	a = { bg = colorscheme.background_higher, fg = colorscheme.grey },
	b = { bg = bg, fg = colorscheme.grey },
	c = { bg = bg, fg = colorscheme.grey },
	x = { bg = bg, fg = colorscheme.grey },
	y = { bg = bg, fg = colorscheme.grey },
	z = { bg = colorscheme.background_high, fg = colorscheme.grey },
}

return M
