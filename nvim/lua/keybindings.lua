----------------------------------------
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true}
----------------------------------------

--Command Mode
keymap('n', '..', ':', {})

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

-----------------------------BUFFERS---------------------------------

keymap('n', '<c-Left>', ':bp<CR>', {}) --Go back to previous buffer
keymap('n', '<c-Right>', ':bn<CR>', {}) --Move to next buffer
---------------------------------------------------------------------
--Comments Configuration-------------------------------------------
keymap('v', '<space>cc', ':Commentary<CR>', opts)
keymap('n', '<space>cc', ':Commentary<CR>', opts)
-------------------------------------------------------------------

---Prettier Configuration---------------------------------------------
keymap('n', '<c-d>', ':CocCommand prettier.formatFile<CR>', opts)
---------------------------------------------------------------------

