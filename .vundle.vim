" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	!git clone https://www.github.com/gmarik/vundle ~/.vim/bundle/vundle
	let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ----------------------------------
" Pre-requisites for other plugins
" ----------------------------------

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" needed for auto-completion; run also: "sudo apt-get install exhuberant-ctags"
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'

" Required by vim-tags
Bundle 'tpope/vim-rvm.git'

" vim function library for other plugins
Bundle 'L9'

" ----------------------------------
"  Navigation enhancements
" ----------------------------------

" Directory tree navigation (mapped to <LEADER>n)
Bundle 'scrooloose/nerdtree.git'

" Press <Leader><Leader>w to jump to any word in the screen
Bundle 'Lokaltog/vim-easymotion'

" Easier switch between buffers (mapped to <LEADER>b)
Bundle 'corntrace/bufexplorer'

" (:BUN/:BD/:BW) Unload/delete/wipe a buffer, keep its window(s), display last accessed buffer(s)
Bundle 'bufkill.vim'

" introduces a command to quit all other buffers (:BufOnly)
Bundle 'BufOnly.vim'

" Fuzzy file, buffer, mru, tag, etc finder
Bundle 'ctrlpvim/ctrlp.vim'

" expand selection progressively with v
Bundle 'terryma/vim-expand-region'

" ----------------------------------
"  Code editing enhancements
" ----------------------------------

" automatic ctags update on file save
Bundle 'szw/vim-tags'

" Auto-completion
Bundle 'Shougo/neocomplcache'

" Display a list of Tags in a sidebar
Bundle 'majutsushi/tagbar'

" automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate.git'

" comment out code (ctrl+c+space)
Bundle 'scrooloose/nerdcommenter'

" Syntax checker
Bundle 'scrooloose/syntastic'

" Cool way to replace surrounder characters (try cs"' and ds')
Bundle 'tpope/vim-surround'

" eclipse-like tasklist (TODOs in code)
Bundle 'TaskList.vim'

" Show ctags list (replaced with TagBar)
"Bundle 'taglist.vim'

" Expand HTML tags with CTRL+E
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" snippet support (never used)
"Bundle 'Shougo/neosnippet'

" fast html coding
"Bundle 'mattn/emmet-vim.git'

" Integration with ruby/rails tools
"Bundle 'tpope/vim-rails.git'
"Bundle 'tpope/vim-rvm.git'

"Bundle 'astashov/vim-ruby-debugger.git'
" Vim functions to run RSpec and Cucumber on the current cursor or file. It
" also supports Spork and Zeus.
"Bundle 'renderedtext/vim-bdd.git'
" Vim ruby refactoring
"Bundle 'ecomba/vim-ruby-refactoring'
" matchit is required by the vim-ruby-refactoring for some operations
"Bundle 'edsono/vim-matchit'

" ----------------------------------
"  External tools integration
" ----------------------------------

" git support
Bundle 'tpope/vim-fugitive'

" Ack search (sudo apt-get install ack-grep) 
"Bundle 'mileszs/ack.vim'

" ----------------------------------
"  Syntax highlighting
" ----------------------------------

" Syntax hightlight for jade files
Bundle 'digitaltoad/vim-jade.git'

" Syntax highlighting for puppet files (SCM)
Bundle 'puppetlabs/puppet-syntax-vim.git'

" Syntax highlighting for LESS files
Bundle 'vim-less'

" Qt QML syntax highlighting
Bundle 'peterhoeg/vim-qml'

" ----------------------------------
"  Color schemes and visual
" ----------------------------------

" color schemes
"Bundle 'jaromero/vim-monokai-refined.git'
Bundle 'Lokaltog/vim-distinguished.git'
Bundle 'vim-scripts/eclipse.vim'

" lean & mean status/tabline for vim that's light as air
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

"...All your other bundles...
if iCanHazVundle == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:BundleInstall
endif

