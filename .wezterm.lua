local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")

config.color_scheme = "Tokyo Night"

config.audible_bell = "Disabled"

config.hide_tab_bar_if_only_one_tab = true

return config
