"" My bad nvim config

"" Plugins
call plug#begin('~/.config/nvim/plugins')
	Plug 'itchyny/lightline.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'arcticicestudio/nord-vim'
	Plug 'luochen1990/rainbow'
	Plug 'junegunn/goyo.vim'
"	Plug 'reedes/vim-pencil'
"	Plug 'honza/vim-snippets'
	Plug 'junegunn/vim-emoji'

call plug#end()
"" Func
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:deoplete#enable_at_startup = 1
let g:rainbow_active = 1
"" Other settings
set smarttab
"set autoindent\
set clipboard=unnamedplus
syntax on
set noswapfile
set nu rnu noshowmode
set splitbelow splitright
colorscheme nord
"" Map keys
map <F12> :PlugUpdate<CR>
map <A-f> :Vex<CR>

highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
