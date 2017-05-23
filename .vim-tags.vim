" vim-tags customization
if isdirectory('.git')
    if !filereadable('.git/tags')
        echo "Generating tags file for the git project..."
        echo ""
        autocmd VimEnter * silent! TagsGenerate!
    end
    autocmd BufWritePost * silent! TagsGenerate!
endif
