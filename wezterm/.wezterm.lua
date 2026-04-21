
local wezterm = require 'wezterm'
local config = {}

--Farbschema
config.color_scheme = 'Catppuccin Mocha (Gogh)'

--Font Config
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight = "Thin"})
config.font_size = 15

--höhe und breite des Fensters
config.initial_cols = 190
config.initial_rows = 46

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
config.window_background_opacity = 1.00
config.macos_window_background_blur = 20

-- Claude Code Modell-Wechsel mit Option + p
config.keys = {
  {
    key = 'p',
    mods = 'OPT',
    action = wezterm.action.InputSelector {
      title = 'Claude Modell wählen',
      choices = {
        { label = 'claude-sonnet-4-6',      id = 'claude-sonnet-4-6' },
        { label = 'claude-opus-4-6',        id = 'claude-opus-4-6' },
        { label = 'claude-haiku-4-5-20251001', id = 'claude-haiku-4-5-20251001' },
      },
      action = wezterm.action_callback(function(window, pane, id, label)
        if id then
          pane:send_text('/model ' .. id .. '\n')
        end
      end),
    },
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
}

return config
