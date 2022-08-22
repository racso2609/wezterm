local keys = require('lua.keymaps').keys
local theme = require('lua.theme')

local config = {
  enable_tab_bar = true,
  window_background_opacity = 0.8,
  color_scheme = theme.theme,
  font = theme.font,
  enable_scroll_bar = true,
  warn_about_missing_glyphs = false,

  -- enable_fancy_tab_bae = false,
  font_size = 14.8,
  -- font_size = 15.5,
  keys = keys,
  inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.2,
  },
  colors = theme.colors
}



return config;
