" open vimrc
command! Econf :tabe $MYVIMRC
" reload vimrc
command! Soconf :so $MYVIMRC

command! CocHover :call CocAction('doHover')
