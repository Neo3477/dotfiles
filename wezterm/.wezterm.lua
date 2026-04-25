
local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

--Farbschema
config.color_scheme = 'Catppuccin Mocha (Gogh)'

--Font Config
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight = "Thin"})
config.font_size = 15

--höhe und breite des Fensters
config.initial_cols = 179
config.initial_rows = 43

config.adjust_window_size_when_changing_font_size = false

--Abstand des Inhalts zum rand
config.window_padding = {
  left = "3cell",
  right = "2cell",
  top = "2cell",
  bottom = "2cell",
}

-- Inaktive Panes abdunkeln ausgeschaltet
config.inactive_pane_hsb = {
  saturation = 1.0, 
  brightness = 1.0, 
}

config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 1.00
config.macos_window_background_blur = 20

--Shortcuts
config.keys = {
{
    key = 'LeftArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Left',
  },
{
    key = 'RightArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Right',
  },
{
    key = 'UpArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Up',
  },
{
    key = 'DownArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Down',
  },	
{
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical
  },
{
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal
  },
{ 
    key = '7', 
    mods = 'OPT', 
    action = wezterm.action.SendString('|') 
  },
{
    key = 'Z',
    mods = 'CMD|SHIFT',
    action = wezterm.action.TogglePaneZoomState,
  },	
}
use_dead_keys = false

return config
