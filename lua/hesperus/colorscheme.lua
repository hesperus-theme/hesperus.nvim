local p = {
	background_low = "#0e1319",
	background = "#171c26",
	background_high = "#252b3a",
	background_higher = "#2e3547",
	foreground = "#dfe4f2",

	grey = "#566580",
	dark_grey = "#2e3547",
    red = "#d93240",
	red_dark = "#a60f2b",
	moon = "#bdb1b7",
	moon_dark = "#7b717d",
	brown = "#b39c8c",
	brown_dark = "#755443",
	blue = "#80b2d2",
	blue_dark = "#369adb",
	magenta = "#b7add9",
	magenta_dark = "#997ebf",
	ice = "#c7d7e8",
	ice_dark = "#9ab6ce",
}

local M = {}

function M.pick()
	local colorscheme = {}

	colorscheme.background_low = p.background_low
	colorscheme.background = p.background
	colorscheme.background_high = p.background_high
	colorscheme.background_higher = p.background_higher
	colorscheme.foreground = p.foreground

	colorscheme.grey = p.grey
	colorscheme.dark_grey = p.dark_grey
	colorscheme.red = p.red
	colorscheme.red_dark = p.red_dark
	colorscheme.moon = p.moon
	colorscheme.moon_dark = p.moon_dark
	colorscheme.brown = p.brown
	colorscheme.brown_dark = p.brown_dark
	colorscheme.blue = p.blue
	colorscheme.blue_dark = p.blue_dark
	colorscheme.magenta = p.magenta
	colorscheme.magenta_dark = p.magenta_dark
	colorscheme.ice = p.ice
	colorscheme.ice_dark = p.ice_dark

	colorscheme.terminal = {
		black = p.grey,
		red = p.red,
		green = p.ice,
		moon = p.brown,
		blue = p.blue,
		magenta = p.magenta,
		cyan = p.ice,
		white = p.foreground,

		bright_black = p.grey,
		bright_red = p.red_dark,
		bright_green = p.moon,
		moon = p.brown_dark,
		bright_blue = p.blue_dark,
		bright_magenta = p.moon_dark,
		bright_cyan = p.ice_dark,
		bright_white = p.foreground,

		background = p.background_low,
		foreground = p.foreground,
	}

	return colorscheme
end

return M
