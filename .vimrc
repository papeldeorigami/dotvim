filetype off
" download and install plugins if folder .vim/bundle is not found
source ~/.vim/.vundle.vim

" pathogen allows to install plugins at the bundle folder (useful for git clone)
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" load neocomplcache plugin settings
" source ~/.vim/.neocomplcache.vim
source ~/.vim/.neocomplete.vim

" load vim-tags settings
source ~/.vim/.vim-tags.vim

" activate syntax highlight
syntax on

" indicate when leader key is pressed
set showcmd

"Ever notice a slight lag after typing the leader key + command? This lowers  
"the timeout.  
set timeoutlen=500

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.  
"if has("autocmd")  
   "augroup myvimrchooks  
    "au!  
    "au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  "augroup END  
"endif  

" folding settings
set foldcolumn=1
set foldmethod=indent   "fold based on indent
"set foldmethod=syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" save folds on exit
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" syntax mapping
au BufNewFile,BufRead *.deface setlocal ft=html

" set markdown as default filetype for .md files
au BufNewFile,BufRead *.md setlocal ft=markdown

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

source ~/.vim/.keymaps.vim

" use the X windows clipboard by default
set clipboard^=unnamedplus

set mouse=a

set nowrap        " don't wrap lines

"set tabstop=4     " uncomment if you want python-styled four spaces
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
set tabstop=2     " uncomment if you want python-styled four spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop

set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " numbeDComToggleCommente for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
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

source ~/.vim/.vim-airline.vim

"source ~/.vim/.vim-ruby-debugger.vim

" ---- NERDTree settings ------
"let b:NERDTreeStatusline=-1
" load NERDTree after vim initialization is complete if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" -----------------------------

" set colorscheme
"if has('gui_running')
""    colorscheme eclipse
"else
	  " assuming that all terminals have 256 colors
    set t_Co=256
    colorscheme distinguished
    " set transparent background
    hi Normal ctermbg=none
"endif

" set gvim font
if has('gui_running')
    set gfn=Courier\ 10\ Pitch\ 13
endif

" load custom tags
set tags+=~/tags,./tags,./../tags,./*/tags  

" ctrlp customization
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore tmp
      \ --ignore log
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" ag silversearcher integration using ack plugin
"let g:ackprg = 'ag --vimgrep --smart-case' 
let g:ackprg = 'ag --smart-case'
"cnoreabbrev ag Ack                                                                           
"cnoreabbrev aG Ack                                                                           
"cnoreabbrev Ag Ack                                                                           
"cnoreabbrev AG Ack 

let g:profiling = 0
function! s:toggle_profile()
    if g:profiling
        profile pause
        let g:profiling = 0
        echo "Profile disabled"
    else
        profile start profile.log
        profile file *
        profile func *
        let g:profiling = 1
        echo "Profile enabled"
    endif
endfunction
command! ToggleProfile call s:toggle_profile()

" easytags customization: do not highlight tags by default (very slow on projects with many tags)
let g:easytags_syntax_keyword = 'always'
let b:easytags_auto_highlight = 0
let g:easytags_always_enabled = 0
let g:easytags_on_cursorhold = 0
let b:easytags_auto_update = 0
let g:easytags_events = []

" autoload MiniBufExplorer
" let g:miniBufExplAutoStart = 0
" let g:miniBufExplBuffersNeeded = 0
"autocmd BufCreate * MBEOpen

" fix nerdtree folder symbol
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
