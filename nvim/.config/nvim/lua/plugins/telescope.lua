-- Telescope konfigurieren
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    -- Standardmäßige Konfiguration
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden'
    },
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    path_display = { "truncate" },
    
    -- Mappings für Navigation und Aktionen
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",  -- Du kannst verschiedene Themes verwenden, wie z.B. "ivy" oder "dropdown"
      search_dirs = { '~/'} ,  -- Sucht im Home-Verzeichnis
      hidden = true,  -- Versteckte Dateien anzeigen
    },
  },
  extensions = {
    -- Hier können Erweiterungen hinzugefügt werden, falls nötig
  },
})

-- Farben für Catppuccin Mocha definieren
local catppuccin_colors