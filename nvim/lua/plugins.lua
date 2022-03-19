local Plug =  vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')
--Themes
Plug('folke/tokyonight.nvim', {branch = 'main'})

--IDE PLUGGINS
Plug  ('easymotion/vim-easymotion')
Plug  ('jiangmiao/auto-pairs')
Plug  ('scrooloose/nerdtree')
Plug  ('christoomey/vim-tmux-navigator')
Plug  ('mhinz/vim-signify')
Plug  ('vim-airline/vim-airline-themes')
Plug  ('mattn/emmet-vim')
Plug  ('neoclide/coc.nvim', {branch = 'release'})
Plug  ('ryanoasis/vim-devicons')
Plug  ('kyazdani42/nvim-web-devicons')
Plug  ('nvim-lua/popup.nvim')
Plug  ('nvim-lua/plenary.nvim')
Plug  ('nvim-telescope/telescope.nvim')

vim.call('plug#end')

