--local gruvbox_material_theme = require("yatline-gruvbox-material"):setup({ mode = "dark", toughness = "soft" })
local catppuccin_theme = require("yatline-catppuccin"):setup("mocha")
require("git"):setup()
require("full-border"):setup()
require("yatline"):setup({
--	theme = gruvbox_material_theme,
	theme = catppuccin_theme,
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },

	style_a = {
		fg = "black",
		bg_mode = {
			normal = "#a89984",
			select = "#d79921",
			un_set = "#d65d0e"
		}
	},
	style_b = { bg = "#665c54", fg = "#ebdbb2" },
	style_c = { bg = "#3c3836", fg = "#a89984" },

	permissions_t_fg = "green",
	permissions_r_fg = "yellow",
	permissions_w_fg = "red",
	permissions_x_fg = "cyan",
	permissions_s_fg = "darkgray",

	tab_width = 20,
	tab_use_inverse = false,

	selected = { icon = "󰻭", fg = "yellow" },
	copied = { icon = "", fg = "green" },
	cut = { icon = "", fg = "red" },

	total = { icon = "󰮍", fg = "yellow" },
	succ = { icon = "", fg = "green" },
	fail = { icon = "", fg = "red" },
	found = { icon = "󰮕", fg = "blue" },
	processed = { icon = "󰐍", fg = "green" },

	show_background = false,

	display_header_line = true,
	display_status_line = true,

	header_line = {
		left = {
			section_a = {					
					{type = "line", custom = false, name = "tabs", params = {"left"}},
			},
			section_b = {
			},
			section_c = {
			}
		},
		right = {
			section_a = {
        			{type = "string", custom = false, name = "date", params = {"%A, %d %B %Y"}},
			},
			section_b = {
        			{type = "string", custom = false, name = "date", params = {"%X"}},
			},
			section_c = {
				{type = "coloreds", custom = false, name = "githead"},
			}
		}
	},

	status_line = {
		left = {
			section_a = {
        			{type = "string", custom = false, name = "tab_mode"},
			},
			section_b = {
        			{type = "string", custom = false, name = "hovered_size"},
			},
			section_c = {
        			{type = "string", custom = false, name = "hovered_name"},
        			{type = "coloreds", custom = false, name = "count"},
			}
		},
		right = {
			section_a = {
        			{type = "string", custom = false, name = "cursor_position"},
			},
			section_b = {
        			{type = "string", custom = false, name = "cursor_percentage"},
			},
			section_c = {
        			{type = "string", custom = false, name = "hovered_file_extension", params = {true}},
        			{type = "coloreds", custom = false, name = "permissions"},
			}
		}
	},
})

require("yatline-githead"):setup({
	show_branch = true,
	branch_prefix = "on",
	prefix_color = "white",
	branch_color = "blue",
	branch_symbol = "",
	branch_borders = "",
  
	commit_color = "bright magenta",
	commit_symbol = "@",
  
	show_behind_ahead = true,
	behind_color = "bright magenta",
	behind_symbol = "⇣",
	ahead_color = "bright magenta",
	ahead_symbol = "⇡",
  
	show_stashes = true,
	stashes_color = "bright magenta",
	stashes_symbol = "$",
  
	show_state = true,
	show_state_prefix = true,
	state_color = "red",
	state_symbol = "~",
  
	show_staged = true,
	staged_color = "bright yellow",
	staged_symbol = "+",
  
	show_unstaged = true,
	unstaged_color = "bright yellow",
	unstaged_symbol = "!",
  
	show_untracked = true,
	untracked_color = "blue",
	untracked_symbol = "?",
})

-- style git.yazi plugin
THEME.git = THEME.git or {}
THEME.git.modified_sign  = "M"
THEME.git.deleted_sign   = "D"
THEME.git.added_sign     = "A"
THEME.git.untracked_sign = "U"
THEME.git.ignored_sign   = "I"
THEME.git.updated_sign   = "?"
