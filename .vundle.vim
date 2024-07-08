" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	!~/.vim/install.sh
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
Plugin 'gmarik/vundle'

" needed for auto-completion; run also: "sudo apt-get install exhuberant-ctags"
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'

" Required by vim-tags
Plugin 'tpope/vim-rvm.git'

" vim function library for other plugins
Plugin 'L9'

" matchit is required by the vim-ruby-refactoring for some operations
"Plugin 'edsono/vim-matchit'

" ----------------------------------
"  Navigation enhancements
" ----------------------------------

" Directory tree navigation (mapped to <LEADER>n)
Plugin 'scrooloose/nerdtree.git'

" CamelCase and underline_words navigation
Plugin 'bkad/CamelCaseMotion'

" Press <Leader><Leader>w to jump to any word in the screen
Plugin 'Lokaltog/vim-easymotion'

" Easier switch between buffers (mapped to <LEADER>b)
Plugin 'corntrace/bufexplorer'

" (:BUN/:BD/:BW) Unload/delete/wipe a buffer, keep its window(s), display last accessed buffer(s)
Plugin 'bufkill.vim'

" introduces a command to quit all other buffers (:BufOnly)
Plugin 'BufOnly.vim'

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'

" expand selection progressively with v
Plugin 'terryma/vim-expand-region'

" show buffer list (disable vim-airline-tabline, because I wanted click to
" switch buffers)
" Plugin 'fholgado/minibufexpl.vim'

" marks enhancements
Plugin 'kshenoy/vim-signature'

" ----------------------------------
"  Code editing enhancements
" ----------------------------------

" automatic ctags update on file save
" Plugin 'szw/vim-tags'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'skywind3000/gutentags_plus'

" Auto-completion
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/deoplete.nvim'

" Display a list of Tags in a sidebar
Plugin 'majutsushi/tagbar'

" automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'Raimondi/delimitMate.git'

" comment out code (ctrl+c+space)
Plugin 'scrooloose/nerdcommenter'

" Syntax checker
Plugin 'scrooloose/syntastic'

" Cool way to replace surrounder characters (try cs"' and ds')
Plugin 'tpope/vim-surround'

" eclipse-like tasklist (TODOs in code)
Plugin 'TaskList.vim'

" Start a search from visual block selection
Plugin 'nelstrom/vim-visual-star-search'

" Support project-specific eslint installation
Plugin 'mtscout6/syntastic-local-eslint.vim'

" Automatic eslint fix
Plugin 'ruanyl/vim-fixmyjs'

" find and replace in multiple files
Plugin 'vim-scripts/greplace.vim'

" Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), snake_case (crs),
" UPPER_CASE (cru), dash-case (cr-), dot.case (cr.), space case (cr<space>), and Title Case (crt)
Plugin 'tpope/vim-abolish'

" Show ctags list (replaced with TagBar)
"Plugin 'taglist.vim'

" Expand HTML tags with CTRL+E
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" snippet support (never used)
"Plugin 'Shougo/neosnippet'

" fast html coding
"Plugin 'mattn/emmet-vim.git'

" Integration with ruby/rails tools
" disabled - too slow on some ruby files with huge arrays (plus not much
" helpful to me)
" Plugin 'tpope/vim-rails.git'

" vim ruby debugger (seems not to work with byebug anymore)
"Plugin 'astashov/vim-ruby-debugger.git'

" Vim functions to run RSpec and Cucumber on the current cursor or file. It
" also supports Spork and Zeus.
"Plugin 'renderedtext/vim-bdd.git'

" Run your tests at the speed of thought
Plugin 'janko-m/vim-test'

" Vim ruby refactoring
" disabled - too hard to use
"Plugin 'ecomba/vim-ruby-refactoring'

" ----------------------------------
"  External tools integration
" ----------------------------------

" git support
Plugin 'tpope/vim-fugitive'

" Ack search (sudo apt-get install ack-grep) 
Plugin 'mileszs/ack.vim'

" fix terminal keys for tmux
"Plugin 'drmikehenry/vim-fixkey'
"Plugin 'nacitar/terminalkeys.vim'

" ----------------------------------
"  Syntax highlighting
" ----------------------------------

" Syntax hightlight for jade files
Plugin 'digitaltoad/vim-jade.git'

" Syntax highlighting for puppet files (SCM)
Plugin 'puppetlabs/puppet-syntax-vim.git'

" Syntax highlighting for LESS files
Plugin 'vim-less'

" Qt QML syntax highlighting
Plugin 'peterhoeg/vim-qml'

" jsx syntax highlighting and indenting
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'

" ----------------------------------
"  Color schemes and visual
" ----------------------------------

" color schemes
"Plugin 'jaromero/vim-monokai-refined.git'
Plugin 'Lokaltog/vim-distinguished.git'
"Plugin 'vim-scripts/eclipse.vim'

" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"...All your other bundles...
if iCanHazVundle == 0
	echo "Installing Plugins, please ignore key map error messages"
	echo ""
	:PluginInstall
endif

