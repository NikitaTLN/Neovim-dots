vim.g.mapleader = " "

-- Quit
vim.keymap.set('n', '<leader>q', '<cmd>:q<CR>')

-- Buffers
vim.keymap.set('n', '<leader>d', ':bnext<CR>')
vim.keymap.set('n', '<leader>w', ':bdelete<CR>' )

-- Copy all text
vim.keymap.set('n', '<C-a>', '<cmd>%y+<CR>')

-- Saving a file via Leader+S
vim.keymap.set('i', '<leader>s', '<cmd>:w<CR>')
vim.keymap.set('n', '<leader>s', '<cmd>:w<CR>')

vim.keymap.set('n', '<leader>t', ':Ex<CR>') 

vim.keymap.set('n', '<leader>p', ':buffers<CR>')


-- NvimTree

--vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
--vim.keymap.set('n', '<leader>z', ':NvimTreeFocus<CR>')


