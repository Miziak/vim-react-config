" open vimrc
command! Econf :tabe $MYVIMRC
" reload vimrc
command! Soconf :so $MYVIMRC

" install all coc extensions for javascript development
command! CocInstallExtensions :CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-pairs

