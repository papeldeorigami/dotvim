" pathogen allows to install plugins at the bundle folder (useful for git clone)
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ---------------- Vundle modules -------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/.vundle.vim


" load neocomplcache plugin settings
source ~/.vim/.neocomplcache.vim

" ---------------- end Vundle modules -------------------

" activate syntax highlight
syntax on
au BufNewFile,BufRead *.deface setlocal ft=html

" activate the wildmenu
" set wildmenu
 if has("wildmenu") 
                set wildmenu wildmode=longest:full,full 
        endif 
        if !has("gui_running") 
                runtime! menu.vim 
                set wildcharm=<C-]> 
                map <C-Z> :emenu <C-]> 
                map! <C-Z> <C-O>:emenu <C-]> 
        endif 
" do not ask to save file before switching buffers
set hidden

" shortcut for bufexplorer
nnoremap <silent> <C-b> :BufExplorer<CR>

"for just following the link
nnoremap <buffer> <C-l> <C-]>
"for following the help topic in a new split (often useful)
nnoremap <buffer> <A-l> <C-w><C-]><C-w>T

" use the X windows clipboard by default
set clipboard=unnamedplus

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

filetype plugin indent on

set pastetoggle=<F2>

let mapleader=" "

source ~/.vim/.statusline.vim
source ~/.vim/.vim-ruby-debugger.vim

" load NERDTree after vim initialization is complete
let b:NERDTreeStatusline=-1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p


" set colorscheme
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
if has('gui_running')
  colorscheme Monokai-Refined
else
  colorscheme distinguished
endif
