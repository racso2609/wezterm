local keys = require("lua.keymaps").keys
local theme = require("lua.theme")

local config = {
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.95,
	color_scheme = theme.theme,
	font = theme.font,
	enable_scroll_bar = true,
	warn_about_missing_glyphs = false,

	font_size = 13,
	-- font_size = 15.5,
	keys = keys,
	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.3,
	},
	colors = theme.colors,
}

return config
