" vim-tags customization
if isdirectory('.git') && !filereadable('.git/tags')
  echo "Generating tags file for the git project..."
  echo ""
  "autocmd VimEnter * TagsGenerate!
endif
