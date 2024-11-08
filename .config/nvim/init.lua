-- Lade den Plugin-Manager Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lade allgemeine Einstellungen
require('settings')
require('keymapping')

-- Plugins initialisieren
require("lazy").setup({
  { "nvim-lualine/lualine.nvim", config = function() require('plugins.lualine') end },  -- Lualine Plugin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function() require('plugins.catppuccin') end },  -- Catppuccin Plugin
  { "goolord/alpha-nvim", config = function() require('plugins.alpha') end }, -- Alpha.nvim Plugin
  { "nvim-telescope/telescope.nvim", config = function() require('plugins.telescope') end },  -- Telescope Plugin
  -- Abhängigkeiten für Neo-tree
  { "nvim-lua/plenary.nvim" },  -- Plenary.nvim wird für viele Plugins benötigt
  { "MunifTanjim/nui.nvim" },    -- NUI.nvim für Neo-tree
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", config = function() require('plugins.neo-tree') end },  -- Neo-tree Plugin
  { "nvim-tree/nvim-web-devicons", config = function() require('nvim-web-devicons').setup() end },  -- nvim-web-devicons Plugin
  { "nanozuki/tabby.nvim", config = function() require('plugins.tabby') end },  -- Tabby.nvim Plugin
  { "brenoprata10/nvim-highlight-colors", config = function() require('nvim-highlight-colors').turnOn() end },  -- highlightcolors.nvim Plugin
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme('gruvbox-material')
    end
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
}
})

