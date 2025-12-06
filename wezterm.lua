-- ~/.wezterm.lua

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Set default shell
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  -- Windows
  config.default_prog = {"powershell.exe"}
elseif wezterm.target_triple:find("darwin") then
  -- MacOS
  config.default_prog = {"/bin/zsh", "-l"}
else
  -- Linux
  config.default_prog = {"/bin/bash", "-l"}
end

-- Font
config.font = wezterm.font("D2Coding")
config.font_size = 20
config.default_cursor_style = "BlinkingBar"

-- config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

config.colors = {
  foreground = "#D8D8D0", 
  background = "#222420",
	cursor_bg = "#50D0A0",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
}

config.inactive_pane_hsb = {
  saturation = 0.8,
  brightness = 0.9,
}

config.window_padding = {
  left = 12,
  right = 4,
  top = 4,
  bottom = 12,
}

-- opacity range [0, 1]
config.window_background_opacity = 0.95

-- blur range [0, 100]
config.macos_window_background_blur = 10

-- Keybindings
local act = wezterm.action
config.keys = {
  { key = "h", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
  { key = "l", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
  { key = "k", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up") },
  { key = "j", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down") },
  { key = '"', mods = "CTRL|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "%", mods = "CTRL|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "d", mods = "CTRL|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },
}

return config