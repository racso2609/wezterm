local status, wezterm = pcall(require, "wezterm")
if (not status) then return end


local act = wezterm.action
local MOVE_SPEED = 5;
local keymaps = {}



keymaps.keys = {
  -- spawn windows and tabs
  { key = "n", mods = "CTRL", action = "SpawnWindow" },
  { key = "t", mods = "CTRL", action = act.SpawnTab 'CurrentPaneDomain' },
  -- split
  {
    key = 'S',
    mods = 'CTRL',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' }
  },
  {
    key = 'H',
    mods = 'CTRL',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
  },
  -- close
  {
    key = 'W',
    mods = 'CTRL',
    action = act.CloseCurrentPane { confirm = true },
  },
  -- toggle full screen
  {
    key = 'f',
    mods = 'ALT',
    action = act.TogglePaneZoomState,
  },

}

local resizeKeys = {
  { key = 'h', direction = 'Left', space = MOVE_SPEED },
  { key = 'l', direction = 'Right', space = MOVE_SPEED },
  { key = 'k', direction = 'Up', space = MOVE_SPEED },
  { key = 'j', direction = 'Down', space = MOVE_SPEED },
}


for i = 1, #resizeKeys do
  -- CTRL+ALT + number to activate that tab
  local action = resizeKeys[i];
  table.insert(keymaps.keys, {
    key = action.key,
    mods = 'CTRL|ALT', action = act.AdjustPaneSize { action.direction, action.space },
  }) -- -act.ActivatePaneDirection- s

  table.insert(keymaps.keys, {
    key = action.key,
    mods = 'ALT',
    action = act.ActivatePaneDirection(action.direction),
  })

end
for i = 1, 8 do
  -- CTRL+ALT + number to activate that tab
  table.insert(keymaps.keys, {

    key = tostring(i),
    mods = 'CTRL|ALT',
    action = act.ActivateTab(i - 1),
  })
  -- F1 through F8 to activate that tab
  -- table.insert(keymaps.keys, {
  -- key = 'F' .. tostring(i),
  -- action = act.ActivateTab(i - 1),
  -- })
end
return keymaps
