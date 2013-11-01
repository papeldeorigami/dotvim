" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	!git clone https://www.github.com/gmarik/vundle ~/.vim/bundle/vundle
	let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ----------------------------------
" original repos on github
" ----------------------------------
" git support
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-rvm.git'
"Bundle 'wincent/Command-T.git'
Bundle 'astashov/vim-ruby-debugger.git'
Bundle 'corntrace/bufexplorer'
Bundle 'puppetlabs/puppet-syntax-vim.git'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neocomplcache'
" color scheme
Bundle 'jaromero/vim-monokai-refined.git'
Bundle 'Lokaltog/vim-distinguished.git'
" fast html coding
Bundle 'mattn/zencoding-vim.git'
" Display a list of Tags in a sidebar
Bundle 'majutsushi/tagbar'
" automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate.git'
" Vim functions to run RSpec and Cucumber on the current cursor or file. It
" also supports Spork and Zeus.
Bundle 'renderedtext/vim-bdd.git'
" Vim ruby refactoring
Bundle 'ecomba/vim-ruby-refactoring'
" matchit is required by the vim-ruby-refactoring for some operations
Bundle 'edsono/vim-matchit'
" comment out code
Bundle 'scrooloose/nerdcommenter'
" Ack search (sudo apt-get install ack-grep) 
Bundle 'mileszs/ack.vim'
" lean & mean status/tabline for vim that's light as air
Bundle 'bling/vim-airline'
" Fuzzy file, buffer, mru, tag, etc finder
Bundle 'kien/ctrlp.vim'
" Syntax checker
Bundle 'scrooloose/syntastic'
" Cool way to replace surrounder characters
Bundle 'tpope/vim-surround'
" ----------------------------------
" vim-scripts repos
" ----------------------------------
Bundle 'L9'
Bundle 'FuzzyFinder'
" Bundle 'YankRing.vim'
Bundle 'bufkill.vim'
Bundle 'ctags.vim'
Bundle 'vim-less'
Bundle 'minibufexpl.vim'
Bundle 'restart.vim'
Bundle 'BufOnly.vim'

" eclipse-like tasklist
Bundle 'TaskList.vim'

" Show ctags list
Bundle 'taglist.vim'

" ----------------------------------
" non github repos
" ----------------------------------
"...All your other bundles...
if iCanHazVundle == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:BundleInstall
endif

