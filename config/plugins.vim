" hardtime
let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = [ "NERD.*", ".git/index" ]

" indentline
let g:indentLine_enabled = 1

" airline theme
let g:airline_theme='monokai_tasty'

" ultisnips
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:UltiSnipsExpandTrigger = '<C-e>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'
let g:UltiSnipsEditSplit="vertical"

" comfortable motion
let g:comfortable_motion_no_default_key_mappings = 1

" fzf
let $FZF_DEFAULT_COMMAND='rg -l ""'
let g:fzf_history_dir = '~/.local/share/fzf-history'
" custom rg command for exclude node specific stuff
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --no-heading --color=always --smart-case --glob "!package-lock.json" --glob "!package.json" '.shellescape(<q-args>), 1,
  \   {'options': '--delimiter : --nth 4..'},
  \   <bang>0)
