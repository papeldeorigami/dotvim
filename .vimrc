" pathogen allows to install plugins at the bundle folder (useful for git clone)
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" activate syntax highlight
syntax on

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
" load NERDTree after vim initialization is complete
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

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

" http://got-ravings.blogspot.com.br/2008/08/vim-pr0n-making-statuslines-that-own.html
" jamessan's
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\ " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
set statusline+=%{ruby_debugger#statusline()}

let g:ruby_debugger_spec_path = 'bundle exec rspec -d'
let g:ruby_debugger_default_script = 'script/rails server' 
let g:ruby_debugger_builtin_sender = 0
let g:ruby_debugger_debug_mode = 1
let g:ruby_debugger_no_maps = 1
noremap <leader>b  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
noremap <leader>v  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
noremap <leader>m  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
noremap <leader>F  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
noremap <leader>s  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
noremap <leader>f  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
noremap <leader>n  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
noremap <leader>c  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
noremap <leader>e  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
noremap <leader>d  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>
