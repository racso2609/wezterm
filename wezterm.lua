local wezterm = require 'wezterm';
-- local themes = ['Gruvbox Dark',"GitHub Dark","Grape"];

return {
  enable_tab_bar = false,
  window_background_opacity = 0.89,
  color_scheme = "Gruvbox Dark",
  font = wezterm.font("Caskaydia Cove Nerd Font"),
  enable_scroll_bar = true,
  warn_about_missing_glyphs = false,
  font_size = 13.5,
  -- font_size = 15.5,
  keys = {
    { key = "n", mods = "CTRL", action = "SpawnWindow" },
    { key = "l", mods = "CTRL|SHIFT", action = wezterm.action { ClearScrollback = "ScrollbackOnly" } },
  },
}
