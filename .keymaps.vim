let mapleader = '\'

" show tasklist
map <unique> <Leader>l <Plug>TaskList

" shortcut for bufexplorer
nnoremap <silent> <leader>b :BufExplorer<CR>

" shortcuts for NERDTree
" nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>n :NERDTreeFind<CR>

" shortcuts for vim-bdd
map <Leader>; :call RunTest("")<CR>
map <Leader>' :call RunTestFile("")<CR>

"for just following the link
nnoremap <buffer> <C-l> <C-]>
"for following the help topic in a new split (often useful)
nnoremap <buffer> <A-l> <C-w><C-]><C-w>T

noremap <leader>db  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
noremap <leader>dv  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
noremap <leader>dm  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
noremap <leader>ds  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
noremap <leader>dn  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
noremap <leader>dc  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
noremap <leader>de  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
noremap <leader>dd  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>

set pastetoggle=<leader>p

" zen coding
let g:user_zen_expandabbr_key = '<leader><TAB>'

map <leader>c<space> NERDComToggleComment

" Tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap tt :tabedit<CR>
nnoremap tc :tabclose<CR>

" Buffer navigation
nnoremap bp :bprevious<CR>
nnoremap bn :bnext<CR>
nnoremap bb :new<CR>
nnoremap bc :quit<CR>

" CtrlP plugin mapping
let g:ctrlp_map = '<c-p>'
