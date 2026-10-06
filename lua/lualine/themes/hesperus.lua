local config = require("hesperus.config")
local colorscheme = require("hesperus.colorscheme").pick()
local utils = require("hesperus.utils")

local bg = (config.transparent and colorscheme.background_high) or colorscheme.background_low

local function contrast(color)
	return utils.mix(color, colorscheme.background_low, 0.85)
end

local M = {}

M.normal = {
	a = { bg = colorscheme.blue_dark, fg = contrast(colorscheme.blue_dark), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.insert = {
	a = { bg = colorscheme.magenta_dark, fg = contrast(colorscheme.magenta_dark), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.terminal = {
	a = { bg = colorscheme.ice_dark, fg = contrast(colorscheme.ice_dark), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.command = {
	a = { bg = colorscheme.brown, fg = contrast(colorscheme.brown), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.visual = {
	a = { bg = colorscheme.magenta, fg = contrast(colorscheme.magenta), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.replace = {
	a = { bg = colorscheme.red, fg = contrast(colorscheme.red), gui = "bold" },
	b = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
	z = { bg = colorscheme.background_higher, fg = contrast(colorscheme.background_higher) },
}

M.inactive = {
	a = { bg = colorscheme.grey, fg = contrast(colorscheme.grey) },
	b = { bg = bg, fg = contrast(bg) },
	c = { bg = bg, fg = contrast(bg) },
	x = { bg = bg, fg = contrast(bg) },
	y = { bg = bg, fg = contrast(bg) },
	z = { bg = colorscheme.background_high, fg = contrast(colorscheme.background_high) },
}

return M
