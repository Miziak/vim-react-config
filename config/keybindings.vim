" map keys for move over code completion
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" map keys for move between splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" map keys for moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" for osx
nnoremap ∆ :m .+1<CR>==
nnoremap Ż :m .-2<CR>==
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap Ż :m '<-2<CR>gv=gv

" map keys for yank and paste over system clipboard
nmap gp "+p
nmap gP "+P
vmap gp "+p
vmap gP "+P
" yank
nmap gy "+y
nmap gY "+Y
vmap gy "+y
vmap gY "+Y

" disable scroll wheel
nnoremap <ScrollWheelUp> <nop>
nnoremap <ScrollWheelDown> <nop>
inoremap <ScrollWheelUp> <nop>
inoremap <ScrollWheelDown> <nop>

" maximize window
function! s:ZoomToggle() abort
  if exists('t:zoomed') && t:zoomed
    close
    let t:zoomed = 0
  else
    tabe %
    let t:zoomed = 1
  endif
endfunction
nnoremap <silent> <leader>m :call s:ZoomToggle()

" map keys for comfortable motion plugin
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

" fzf
" fzf navigation
autocmd FileType fzf tnoremap <buffer> <C-j> <down>
autocmd FileType fzf tnoremap <buffer> <C-k> <up>
autocmd FileType fzf tnoremap <buffer> <up> <nop>
autocmd FileType fzf tnoremap <buffer> <down> <nop>
" map keys for search via fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <A-f> :Rg <C-r><C-w><CR>
vnoremap <A-f> "vy:Rg <C-r>v<CR>
" for osx
nnoremap ń :Rg <C-r><C-w><CR>
vnoremap ń "vy:Rg <C-r>v<CR>

" coc
" map key to trigger code completion
inoremap <silent><expr> <c-space> coc#refresh()
" map keys for jump to definition stuff
nmap <silent><leader>dd <Plug>(coc-definition)
nmap <silent><leader>dvv :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent><leader>dx :call CocAction('jumpDefinition', 'split')<CR>
" map key for find references
nmap <silent><leader>r <Plug>(coc-references)
" map key and function for multiple cursors
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
nnoremap <expr> <silent> <C-m> <SID>select_current_word()
xmap <silent> <C-m> <Plug>(coc-cursors-range)

" fugitive
" remap cc in commit message buffer to clear message and go to insert
autocmd FileType gitcommit nnoremap <buffer>cc cG
" key mappings for take solutions from diff
nnoremap <leader>dh :diffget //2<CR>
nnoremap <leader>dl :diffget //3<CR>
" map key and function for toggle git blame
function! s:ToggleBlame()
    if &l:filetype ==# 'fugitiveblame'
        close
    else
        Gblame
    endif
endfunction
nnoremap <leader>b :call <SID>ToggleBlame()<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>

" macro records
" log variable under cursor
nmap <leader>l yiwoconsole.log(<esc>p<esc>
