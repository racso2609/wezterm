local wezterm = require 'wezterm';
local themes = { 'Gruvbox Dark', "GitHub Dark", "Grape" };
local font = wezterm.font("Caskaydia Cove Nerd Font")


local selectedTheme = math.random(#themes);
local keys = require('lua.keymaps').keys

local config = {
  enable_tab_bar = true,
  window_background_opacity = 0,
  color_scheme = themes[selectedTheme],
  font = font,
  enable_scroll_bar = true,
  warn_about_missing_glyphs = false,
  font_size = 14.8,
  keys = keys
  -- font_size = 15.5,

  -- inactive_pane_hsb = {
  -- saturation = 0.9,
  -- brightness = 0.8,
  -- },
}


return config;
