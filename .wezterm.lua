local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Iosevka Nerd Font")
config.font_size = 13

config.color_scheme = "GruvboxDark"

config.audible_bell = "Disabled"

config.hide_tab_bar_if_only_one_tab = true

return config
