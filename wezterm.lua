
local wezterm = require 'wezterm';
return {
  enable_tab_bar = false,
  window_background_opacity = 0.8,
  color_scheme = "Calamity",
  font = wezterm.font("CaskaydiaCove Nerd Font"),
  enable_scroll_bar = true,
  keys = {
    {key="n", mods="CTRL", action="SpawnWindow"},
    {key="l", mods="CTRL|SHIFT", action=wezterm.action{ClearScrollback="ScrollbackOnly"}},
  }
}
