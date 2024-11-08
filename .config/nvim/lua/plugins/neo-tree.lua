-- Neo-tree konfigurieren
require("neo-tree").setup({
  close_if_last_window = true,  -- Fenster schließen, wenn es das letzte ist
  popup_border_style = "rounded",  -- Abgerundete Ränder für Popups
  enable_git_status = true,  -- Git-Status anzeigen
  enable_diagnostics = true,  -- Diagnosen anzeigen
  default_component_configs = {
    icon = {
      folder_closed = "",  -- Symbol für geschlossenen Ordner
      folder_open = "",  -- Symbol für geöffneten Ordner
      folder_empty = "ﰊ",  -- Symbol für leeren Ordner
      default = "",  -- Standardsymbol für Dateien
      highlight = "NeoTreeFileIcon",  -- Highlights
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,  -- Zeigt versteckte Dateien an
      hide_gitignored = true,  -- Blendet gitignored Dateien aus
    },
    follow_current_file = {  -- Neue Struktur für follow_current_file
      enabled = true,  -- Aktiviert das automatische Folgen der aktuellen Datei
    },
  },
  window = {
    position = "left",  -- Fensterposition links
    width = 70,  -- Fensterbreite
  },
  mappings = {
    ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
    ['a'] = {
      'add',
      -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
      -- some commands may take optional config options, see `:h neo-tree-mappings` for details
      config = {
        show_path = 'none', -- "none", "relative", "absolute"
      },
    },
    ['A'] = 'add_directory', -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
    ['d'] = 'delete',
    ['r'] = 'rename',
    ['y'] = 'copy_to_clipboard',
    ['x'] = 'cut_to_clipboard',
    ['p'] = 'paste_from_clipboard',
    ['c'] = 'copy',
    ['m'] = 'move', -- takes text input for destination, also accepts the optional config.show_path option like "add".
    ['q'] = 'close_window',
    ['R'] = 'refresh',
    ['?'] = 'show_help',
    ['<'] = 'prev_source',
    ['>'] = 'next_source',
    ['i'] = 'show_file_details',
    ['s'] = 'open_vsplit',
  },
  buffers = {
    show_unloaded = true,

  },
  git_status = {
    window = {
      position = "float",
    },
  },
})

-- Icons laden
require('nvim-web-devicons').setup()
  




  
