" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Basic Settings
syntax on
set autoindent
set ts=4
set shiftwidth=4
set nu
set mouse=a
set autoread
set ww+=<,>


" Colorscheme settings
set t_Co=256
colorscheme gruvbox
set background=dark
let g:gruvbox_bold='0'
let g:gruvbox_invert_selection = '0'
let g:gruvbox_invert_tabline = '1'
" Vim command settings for Competitive Programming

inoremap {<CR>      {<CR>}<ESC>O
inoremap {<Space>	{<Space><Space>}<Left><Left>

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
