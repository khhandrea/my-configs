-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font = wezterm.font("D2Coding")
config.font_size = 20
config.default_cursor_style = "BlinkingBar"

-- config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
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

-- Keep adding configuration options here
local act = wezterm.action
config.keys = {
	{ key = "h", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down") },
	{ key = '"', mods = "CTRL|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "%", mods = "CTRL|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CTRL|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },

	{ key = "1", mods = "SUPER", action = act.ActivateTab(1) },
	{ key = "2", mods = "SUPER", action = act.ActivateTab(2) },
	{ key = "3", mods = "SUPER", action = act.ActivateTab(3) },
	{ key = "4", mods = "SUPER", action = act.ActivateTab(4) },
	{ key = "5", mods = "SUPER", action = act.ActivateTab(5) },
	{ key = "6", mods = "SUPER", action = act.ActivateTab(6) },
	{ key = "7", mods = "SUPER", action = act.ActivateTab(7) },
	{ key = "8", mods = "SUPER", action = act.ActivateTab(8) },
	{ key = "9", mods = "SUPER", action = act.ActivateTab(-1) },

	{ key = "C", mods = "SUPER", action = act.CopyTo("Clipboard") },
	{ key = "v", mods = "SUPER", action = act.PasteFrom("Clipboard") },

	{ key = "t", mods = "SUPER", action = act.SpawnTab("CurrentPaneDomain") },

	{ key = "=", mods = "SUPER", action = act.IncreaseFontSize },
	{ key = "-", mods = "SUPER", action = act.DecreaseFontSize },
}

return config
