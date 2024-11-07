
local wezterm = require 'wezterm'
local config = {}

--beim start wird das fenster zentriert MesloLGS Nerd Font
--wezterm.on("gui-startup", function(cmd)
--	local screen = wezterm.gui.screens().main
--	local ratio = 0.88
--	local width, height = screen.width * ratio, screen.height * ratio
--	local tab, pane, window = wezterm.mux.spawn_window(cmd or {
--		position = { x = (screen.width - width) / 1, y = (screen.height - height) / 1 },
--	})
	-- window:gui_window():maximize()
--	window:gui_window():set_inner_size(width, height)
--end)

--Farbschema
config.color_scheme = 'Gruvbox Material (Gogh)'

--Font Config
config.font = wezterm.font("JetBrainsMono Nerd Font Mono", {weight = "Thin"})
config.font_size = 16

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
config.window_background_opacity = 1.00
config.macos_window_background_blur = 20

return config
