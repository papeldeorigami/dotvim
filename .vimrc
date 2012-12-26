" pathogen allows to install plugins at the bundle folder (useful for git clone)
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" activate syntax highlight
syntax on

" load NERDTree after vim initialization is complete
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" show line numbers
set number

" do not ask to save file before switching buffers
set hidden

" switch between buffers
nnoremap <silent> <C-b> :bn<CR>
nnoremap <silent> <S-b> :bp<CR>

" use the X windows clipboard by default
set clipboard=unnamedplus
