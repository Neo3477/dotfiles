-- Keymapping global

-- Setze eine globale Tastenkombination für Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>c', ':close<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>m', ':Markview splitToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>y', ':Yazi<CR>', { noremap = true, silent = true }) 

