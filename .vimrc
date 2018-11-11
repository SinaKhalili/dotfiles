set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Set line numbering - hybrid + regular when in insert mode 
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

call plug#begin('~/.vim/plugged')

" List of plugins and stuff
" Command is 'PlugInstall'
Plug 'adimit/prolog.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
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


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
