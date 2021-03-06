set t_Co=256
set number
set autoindent
set cindent
set smartindent
set nobackup
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set hlsearch
set incsearch
set showmode
set history=1000
set background=dark
set backspace=2
set nocompatible
"set cino=g0j1J1
set clipboard=unnamed
set autoread
set smartcase
set tags=tags
set updatetime=100
set relativenumber


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme onedark
" Colorscheme settings
" hi Normal ctermbg=244
set laststatus=2
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#ignore_bufadd_pat = 'nerdtree|tagbar|!'
let g:polyglot_disabled = ['jsx', 'csv']

" Keymaps
inoremap jj <ESC>
inoremap <C-l> <ESC>

:nnoremap <C-o> :FZF<CR>

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors
