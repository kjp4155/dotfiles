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

command PS2 vsp input.txt|sp output.txt|vert res 30|wa
command PS set splitright|vsp output.txt|w|sp input.txt|w|vertical resize 30|normal <C-w>w<C-w>w
command RIO wall|!g++ -O2 -std=c++14 -Wall -lm %:r.cpp && ./a.out < input.txt > output.txt
command RI  wall|!g++ -O2 -std=c++14 -Wall -lm %:r.cpp && ./a.out < input.txt
command CP !pbcopy < %:r.cpp
command INIT :1,$d|:read ~/Desktop/Dropbox/PS/notes/template.cpp|normal Gk$


inoremap {<CR>      {<CR>}<ESC>O
inoremap {<Space>	{<Space><Space>}<Left><Left>

