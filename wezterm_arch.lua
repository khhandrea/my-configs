local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font "JetBrainsMono Nerd Font"
config.font_size = 13.0
config.enable_tab_bar = false

config.colors = {
	foreground = "#D8D8D0", 
    background = "#222420",
	cursor_bg = "#50D0A0",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
}

config.window_padding = {
        left = 12,
        right = 4,
        top = 4,
        bottom = 12,
}

return config
