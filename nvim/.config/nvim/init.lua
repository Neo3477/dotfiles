-- Lazy.nvim Plugin-Manager Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Basis-Konfigurationen laden
require('settings')
require('keymapping')

-- Plugin-Konfiguration
require("lazy").setup({
  -- UI Verbesserungen
  {
    "nvim-lualine/lualine.nvim",
    config = function() require('plugins.lualine') end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function() require('plugins.catppuccin') end
  },
  {
    "goolord/alpha-nvim",
    config = function() require('plugins.alpha') end
  },
  
  -- Datei-Navigation
  {
    "nvim-telescope/telescope.nvim",
    config = function() require('plugins.telescope') end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    config = function() require('plugins.neo-tree') end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons"
    }
  },

  -- Tab-Management und Icons
  {
    "nvim-tree/nvim-web-devicons",
    config = function() require('nvim-web-devicons').setup() end
  },
  {
    "nanozuki/tabby.nvim",
    config = function() require('plugins.tabby') end
  },

  -- Farbschema und Styling
  {
    "brenoprata10/nvim-highlight-colors",
    config = function() require('nvim-highlight-colors').turnOn() end
  },
  {
    "xiyaowong/transparent.nvim",
    config = function() require('plugins.transparent') end
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme('gruvbox-material')
    end
  },

  -- LSP und Markdown
  {
    'nvimdev/lspsaga.nvim',
    config = function() require('lspsaga').setup({}) end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    "OXY2DEV/markview.nvim",
    config = function() require("plugins.markview") end,
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
        require("plugins.treesitter")
    end,
    priority = 1000, -- Hohe Priorität, da andere Plugins davon abhängen
},
---@type LazySpec
{
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "<leader>-",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      -- Open in the current working directory
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory" ,
    },
    {
      -- NOTE: this requires a version of yazi that includes
      -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
      '<c-up>',
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  ---@type YaziConfig
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
}	
})

