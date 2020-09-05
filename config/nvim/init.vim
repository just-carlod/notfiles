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
""	Plug 'honza/vim-snippets'
	Plug 'mattn/emmet-vim'
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
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
let g:rainbow_active = 1
augroup langindentation
	autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype php setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype xml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd Filetype qcom setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType html,css EmmetInstall
augroup END
"" Other settings
set nowrap
set smarttab
set autoindent
set clipboard=unnamedplus
syntax on
set noswapfile
set nu rnu noshowmode
set splitbelow splitright
set numberwidth=3
set cursorcolumn
colorscheme nord
"" Map keys
map <F12> :PlugUpdate<CR>
map <C-f> :Vex<CR>
map <F11> :%s/^+//g
"inoremap " ""<esc>i
"inoremap [ []<esc>i
"inoremap { {}<esc>i
"inoremap ( ()<esc>i
"inoremap ' ''<esc>i
"inoremap < <><esc>i
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
