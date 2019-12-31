" hardtime
let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = [ '.git[\\/]index'  ]
let g:hardtime_ignore_quickfix = 1

" indentline
let g:indentLine_enabled = 1

" airline theme
" let g:airline_theme='monokai_tasty'
" alt theme
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'

" comfortable motion
let g:comfortable_motion_no_default_key_mappings = 1

" fzf
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = &lines - 3
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': 1,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

let $FZF_DEFAULT_COMMAND='rg -l ""'
let g:fzf_history_dir = '~/.local/share/fzf-history'
" custom rg command for exclude node specific stuff
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --no-heading --color=always --smart-case --glob "!package-lock.json" --glob "!package.json" '.shellescape(<q-args>), 1,
  \   {'options': '--delimiter : --nth 4..'},
  \   <bang>0)

" coc
let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-eslint',
      \'coc-json',
      \'coc-prettier',
      \'coc-css',
      \'coc-pairs',
      \'coc-snippets',
      \'coc-explorer',
      \'coc-styled-components'
      \]

" startify
let g:startify_change_to_dir = 0
let g:startify_custom_header = [
  \'',
  \'',
  \'                 .,.                .,.                                                                                                 ',
  \'              .,,   .,,,.       ,,,.   .,,                                                                                              ',
  \'             .,.        ,,,  ,,,.        ,,                                                                                             ',
  \'             ,,           .,,,           ,,                                                                                             ',
  \'             ,,          .,,,,,          ,,                                                                                             ',
  \'             .,.        ,,    ,,.        ,,                        .********,                                                           ',
  \'              ,,    ..,,,,,,,,,,,,,.    .,.                        *@@@@@@@@@@@@                                                  (&/   ',
  \'           .,,,,,,.. ,,          ,,. .,,,,,,.                      *@@        %@@                                                 #@(   ',
  \'        ,,,,   ,,   ,,            ,,   ,,   .,,,.                  *@@         @@.     &@@@@@(        #@@@@@@,        (@@@@@&   @@@@@@@*',
  \'     ,,,        ,, ,,    ,,,,,,    .,. ,.       ,,,                *@@        %@@   ,@@*     @@@    ,@(     %@@     @@@.    (@/   #@(   ',
  \'    ,,          .,,,    ,,,,,,,,    .,,,          ,,               *@@&&&&&@@@@@    @@.       *@#            @@,   @@/            #@(   ',
  \'    ,,           ,,.    ,,,,,,,,     ,,.          ,,               *@@..,,@@%      #@@@@@@@@@@@@@   ,@@@&%&@%@@,   @@             #@(   ',
  \'     ,,         ,,.,.    ,,,,,,.    ,,,,         ,,.               *@@     @@@     /@&              @@,      @@,   @@             #@(   ',
  \'       ,,,.    ,,  .,.             ,,  ,,    .,,,                  *@@      #@@*    @@@            .@@       @@,   *@@.      *    #@(   ',
  \'          .,,,,,,   .,,          ,,,   .,,,,,,                     *@@       /@@(    #@@@#/(&@@&    (@@%..,%@@@,    .@@@&%%@@@(   *@@%%&',
  \'              ,,.,,,,,,,,,,,,,,,,,,,,,,.,,                                               .,.            ,.               ..          .  ',
  \'             .,.       .,,     ,,        ,,                                                                                             ',
  \'             ,,          ,,. ,,          ,,                                                                                             ',
  \'             ,,            ,,.           ,,                                                                                             ',
  \'             .,.        .,,. ,,,         ,,                                                                                             ',
  \'              ,,      ,,,      ,,,.     ,,                                                                                              ',
  \'                ,,,,,.            .,,,,,.                                                                                               ',
  \'',
  \'',
  \]

" indentLine
let g:indentLine_fileTypeExclude = ['startify']

" vim-test
let test#strategy = "neovim"
let test#neovim#term_position = "belowright"
let test#javascript#jest#options = {
  \ 'all':   '--config=jest.config.json',
\}
