let mapleader = "\<Space>"

" Automatically jump to the end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" show tasklist
"map <Leader>l <Plug>TaskList

" shortcut for bufexplorer
nnoremap <leader>b :BufExplorer<CR>

" shortcuts for NERDTree
" nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>

" easy motion setup - jump to any word on screen
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" toggle comment
nnoremap <leader>c<space> NERDCommentToggle

" show list of tags
nnoremap <leader>o :TagbarToggle<CR>

"for just following the link
nnoremap <buffer> <C-l> <C-]>
"for following the help topic in a new split (often useful)
nnoremap <buffer> <A-l> <C-w><C-]><C-w>T

" move lines/blocks up/down (like eclipse)
nnoremap <A-DOWN> :m .+1<CR>==
nnoremap <A-UP> :m .-2<CR>==
inoremap <A-DOWN> <Esc>:m .+1<CR>==gi
inoremap <A-UP> <Esc>:m .-2<CR>==gi
vnoremap <A-DOWN> :m '>+1<CR>gv=gv
vnoremap <A-UP> :m '<-2<CR>gv=gv

" duplicate lines/blocks (like eclipse)
nnoremap <C-A-UP> yy p

" shortcuts for vim-bdd
" map <Leader>; :call RunTest("")<CR>
" map <Leader>' :call RunTestFile("")<CR>

" ruby debugger keys
"noremap <leader>db  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
"noremap <leader>dv  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
"noremap <leader>dm  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
"noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
"noremap <leader>ds  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
"noremap <leader>df  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
"noremap <leader>dn  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
"noremap <leader>dc  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
"noremap <leader>de  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
"noremap <leader>dd  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>

set pastetoggle=<leader>p

" zen coding
let g:user_zen_expandabbr_key = '<leader><TAB>'

" Tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap tt :tabedit<CR>
nnoremap tc :tabclose<CR>

" Buffer navigation
nnoremap <A-PageUp> :bprevious<CR>
nnoremap <a-PageDown> :bnext<CR>

" CtrlP plugin mapping
"let g:ctrlp_map = '<c-p>'

" Expand selected region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
