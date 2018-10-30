set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

call plug#begin('~/.vim/plugged')

" List of plugins and stuff
" Command is 'PlugInstall'

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'terryma/vim-multiple-cursors'

" End plugins

call plug#end()

" Seoul Colour settings
let g:seoul256_background = 237
colo seoul256

" Aliases/Key mappings
map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
