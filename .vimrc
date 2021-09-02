" => Chapter 1: Getting Started --------------------------------------- {{{
" Basic Python-friendly Vim configuration. Colorscheme is changed from
" 'default' to make screenshots look better in print.
"
syntax on                       " Enable syntax highlighting.
filetype plugin indent on       " Enable file type based indentation.

set autoindent                  " Respect indentation when starting a new line.
set expandtab                   " Expand tabs to spaces. Essential in Python.
set tabstop=4                   " Number of spaces tab is counted for.
set shiftwidth=4                " Number of spaces to use for autoindent.
set backspace=2                 " Fix backspace behavior on most terminals.
set foldmethod=indent           " Folding by indent"
set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open the wildmenu."
set number                      " Put on Line numbers"
set relativenumber              " Active relative line number"
set hlsearch                    " Highlights every search match on the screen"
set incsearch                   " Incremental searching"
set clipboard=unnamed           " Copy into system (*) register."
set termguicolors
set laststatus=2                " Always display a status line."
set showcmd                     " Show last command in the status line.

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Map the leader key to a spacebar.
let mapleader = "\<space>"

let NERDTreeShowBookmarks = 1   " Display bookmarks on startup.
autocmd VimEnter * NERDTree     " Enable NERDTree on Vim startup.

noremap <leader>t :NERDTreeToggle<cr>

colorscheme murphy         " Change a colorscheme.

" Set up persistent undo across all files.
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
  call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

" Autoclose NERDTree if it's the only open window left."
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&  b:NERDTree.isTabTree()) | q | endif

packloadall " Load all plugins.
silent! helptags ALL " Load help files for all plugins.

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.

:vmap <Tab> >
:vmap <S-Tab> <

set​ nocompatible
​ 	​filetype​ plugin ​on​
