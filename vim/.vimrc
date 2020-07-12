syntax on

" ===== Tabs to spaces, and shiftwidth (which is when you use '>' to move)

set ts=4 sw=4 
set expandtab
" Except for Makefiles because they're a needy little boi
au FileType make setlocal noexpandtab

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Line numbers =====================

set number relativenumber

augroup numbertoggle " Only relative if it is the focused split
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
