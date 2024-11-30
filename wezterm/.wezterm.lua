
local wezterm = require 'wezterm'
local config = {}

--Farbschema
config.color_scheme = 'Catppuccin Mocha (Gogh)'

--Font Config
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight = "Thin"})
config.font_size = 17

--höhe und breite des Fensters
config.initial_cols = 165
config.initial_rows = 48

config.adjust_window_size_when_changing_font_size = false

--Abstand des Inhalts zum rand
config.window_padding = {
  left = "3cell",
  right = "2cell",
  top = "2cell",
  bottom = "2cell",
}

config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.60
config.macos_window_background_blur = 20

return config
