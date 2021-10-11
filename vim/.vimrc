syntax on

" ===== Tabs to spaces, and shiftwidth (which is when you use '>' to move)
set ts=4 sw=4 
set expandtab
set autoindent

" Except for Makefiles because they're a needy little boi
au FileType make setlocal noexpandtab

" ================ Boundaries ========================
set iskeyword-=_    " will treat snake_case as word boundary

" ================ Scrolling ========================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Code folding ===========================
set foldmethod=indent " This folds python
set foldlevel=99
nnoremap <space> za

" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Splitting ===========================
set splitright

" ================ Line numbers =====================
set number relativenumber

augroup numbertoggle " Only relative if it is the focused split
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" ================ Recovery =====================
set undofile
set undodir=~/.vim/undodir

" ================ Colour =====================
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=252 "Grey70

set cursorline
highlight CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE      " 234 is almost black

" ================ Custom functions =====================

" Open man page for particular word. Using Shif-K in normal mode under word
" Inspired by: 
" https://vim.fandom.com/wiki/Open_a_window_with_the_man_page_for_the_word_under_the_cursor
" https://github.com/ludwig/split-manpage.vim

function! ReadMan()
    let s:man_word = expand('<cword>')
    execute ":vnew"
    execute ":r!man " . s:man_word . " | col -b"

    " Make the new window a scratch buffer
    execute ":setlocal buftype=nofile"
    execute ":setlocal bufhidden=hide"
    execute ":setlocal noswapfile"
    execute ":setlocal nobuflisted"

    execute ":norm ggdd"
    execute "set filetype=man"
endfunction

noremap K :call ReadMan()<CR>
