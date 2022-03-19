----------------------------------------
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true}
----------------------------------------

----------------------------------------
vim.g.mapleader = ' '
vim.g['user_emmet_leader_key'] = ','
----------------------------------------

--------------------------------------------------------
keymap('n', '<Leader>w', ':w<CR>', {})
keymap('n', '<Leader>q', ':q<CR>', {})
keymap('n', '<Leader>ww', ':w!<CR>', {})
keymap('n', '<Leader>qq', ':q!<CR>', {})
keymap('n', '<Leader>wq', ':wq<CR>', {})
keymap('n', '<Leader>s', '<Plug>(easymotion-s2)',{})
keymap('n', '<F2>', ':NERDTreeFind<CR>', {})
keymap('n', '<F6>', ':PlugInstall<CR>', {})
keymap('n', '<F5>', ':source %<CR>', {})
-------------------------------------------------------

--Anular las teclas de dirrecion----
keymap('n', '<up>', '<nop>', opts)
keymap('n', '<down>', '<nop>', opts)
keymap('n', '<Left>', '<nop>', opts)
keymap('n', '<Right>', '<nop>', opts)
-------------------------------------

----------------------------------------------------------------
keymap('n', '<c-t>', ':split<CR>:ter<CR>', {}) --Abrir terminal
----------------------------------------------------------------

--------------------------------------------------------
keymap('n', '<Right>', ':vertical resize +2<CR>', opts)
keymap('n', '<Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<Down>', ':resize +2<CR>', opts)
keymap('n', '<Up>', ':resize -2<CR>', opts)
--------------------------------------------------------

---TELESCOPE SHORTCUTS-------------------------------------------
keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', '<cmd>Telescope live_grep prompt_prefix=<cr>', opts)
keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', opts)
keymap('n', '<Leader>fs', '<cmd>Telescope git_status<CR>', opts)
keymap('n', '<Leader>fc', '<cmd>Telescope command_history<CR>', opts)
-------------------------------------------------------------------


