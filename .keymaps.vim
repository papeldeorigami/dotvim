let mapleader = " "

" show tasklist
map <unique> <Leader>l <Plug>TaskList

" shortcut for bufexplorer
nnoremap <silent> <C-b> :BufExplorer<CR>

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

noremap <leader>b  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
noremap <leader>v  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
noremap <leader>m  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
noremap <leader>F  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
noremap <leader>s  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
noremap <leader>f  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
noremap <leader>N  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
noremap <leader>c  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
noremap <leader>e  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
noremap <leader>d  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>

set pastetoggle=<leader>p

" zen coding
let g:user_zen_expandabbr_key = '<TAB>'
