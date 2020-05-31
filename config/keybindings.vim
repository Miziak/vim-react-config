" disable ex mode
map Q <nop>

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

" esc in normal mode also clear search
nnoremap <silent> <Esc> :nohl <Esc>

" map jk and kj to esc
inoremap <Esc> <nop>
inoremap <silent> jk <C-o>:nohl<CR><Esc>
inoremap <silent> kj <C-o>:nohl<CR><Esc>

" nerdtree open
map <leader>n :NERDTreeFind<CR>

" maximize window remap
map <silent> <leader>m <C-w>o

" restore <CR> keybinding in quickfix window overwritten by coc multicursors

autocmd FileType qf nnoremap <buffer> <CR> <CR>
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

" coc
" map key to trigger code completion
inoremap <silent><expr> <c-space> coc#refresh()
" map keys for jump to definition stuff
nmap <silent><leader>dd <Plug>(coc-definition)
nmap <silent><leader>dvv :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent><leader>dx :call CocAction('jumpDefinition', 'split')<CR>
" map key for find references
nmap <silent><leader>r <Plug>(coc-references)
nmap <silent><leader>h :CocHover<CR>
" map snippet keys
imap <C-e> <Plug>(coc-snippets-expand)

" fugitive
" remap cc in commit message buffer to clear message and go to insert
autocmd FileType gitcommit nnoremap <buffer>cc dG
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

" macro records
" log variable under cursor
nmap <leader>l yiwoconsole.log(<esc>p<esc>

" calculate rem's keybinding
function PxToRem()
  normal! "syiw
  let @s = trim(system("echo ".getreg("s")."/16 | node -p"))."rem"
  normal! viw"sp
endfunction

nmap <leader>r :call PxToRem()<CR>

function ConventionalCommitGen(type)
  execute "normal! a" . a:type . ": | [" . trim(system("git rev-parse --abbrev-ref HEAD")) . "]\<esc>F|x"
  startinsert
endfunction

nmap <leader>gf :call ConventionalCommitGen("feat")<CR>
nmap <leader>gb :call ConventionalCommitGen("fix")<CR>
nmap <leader>gh :call ConventionalCommitGen("chore")<CR>
nmap <leader>gr :call ConventionalCommitGen("refactor")<CR>
nmap <leader>gt :call ConventionalCommitGen("test")<CR>
