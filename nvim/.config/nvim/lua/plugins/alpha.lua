-- Alpha-Nvim konfigurieren
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local devicons = require("nvim-web-devicons")

-- Beispielbildschirm für das Dashboard (du kannst diesen Abschnitt anpassen)
dashboard.section.header.val = {
    [[                                                                     ]],
    [[       ███████████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      ████████████████ ███████████ ███   ███████     ]],
    [[     ████████████████ ████████████ █████ ██████████████   ]],
    [[    █████████████████████████████ █████ █████ ████ █████   ]],
    [[  ██████████████████████████████████ █████ █████ ████ █████  ]],
    [[ ██████  ███ █████████████████ ████ █████ █████ ████ ██████ ]],
    [[ ██████   ██  ███████████████   ██ █████████████████ ]],
    [[ ██████   ██  ███████████████   ██ █████████████████ ]],
}

-- Header farblich anpassen
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#89b4fa" }) -- Hex-Code für die gewünschte Farbe

-- Der Header wird der neuen Highlight-Gruppe zugewiesen
dashboard.section.header.opts.hl = "DashboardHeader"



-- Menüoptionen (Beispiel)
dashboard.section.buttons.val = {
  dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "󰮗  Find File", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
  dashboard.button("x", "  Explorer (cwd)", ":Neotree<CR>"),
  dashboard.button('o', '󰇈  Obsidian', ':e $HOME/Documents/Neo3477 <CR>'),
  dashboard.button('c', '  .config', ':e $HOME/.config <CR>'),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- Footer Text
dashboard.section.footer.val = "Have a productive day!"

-- Setup des Dashboards
alpha.setup(dashboard.opts)


