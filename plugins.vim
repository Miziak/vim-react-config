" call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')
call plug#begin()
  " === GENERAL PURPOSE PLUGINS === "
  " nice monokai colorsheme
  " Plug 'patstockwell/vim-monokai-tasty'

  " alt theme
  " Plug 'mhartington/oceanic-next'
  
  " yet another theme
  Plug 'morhetz/gruvbox'

  " indent lines
  Plug 'Yggdroot/indentLine'

  " plugin for programming languages support
  Plug 'sheerun/vim-polyglot'

  " plugin for easy comments
  Plug 'tomtom/tcomment_vim'

  " plugin add actions for serrounding text obiects
  Plug 'tpope/vim-surround'
  
  " plugin to easy replace textobj width register
  Plug 'inkarkat/vim-ReplaceWithRegister'

  " plugin add line under buffer providing info about files
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " plugin add git integration to vim
  Plug 'tpope/vim-fugitive'

  " plugin enchance powerful vim repeat feature to repeat plugins motions and
  " actions
  Plug 'tpope/vim-repeat'

  " plugin add indent text object
  Plug 'michaeljsmith/vim-indent-object'

  " fuzzy finder engine for vim
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  " plugin for 'smooth' scroll
  Plug 'psliwka/vim-smoothie'

  " plugin provide powerful intellisense engine and language servers support
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

  " plugin for multicursor
  Plug 'terryma/vim-multiple-cursors'

  " file explorer plugin
  Plug 'preservim/nerdtree'

  Plug 'unblevable/quick-scope'

  " === OTHER PLUGINS === "
  " plugin disable repeat hjkl motions to optimize workflow by force usting
  " 'bigger' motions like w, e, b, B
  Plug 'takac/vim-hardtime'

  " plugin for note taking 
  Plug 'jceb/vim-orgmode'

  " plugin add icons for file types
  Plug 'ryanoasis/vim-devicons'

  " plugin for startup page
  Plug 'mhinz/vim-startify'

  " plugin maximize and restore splits
  Plug 'troydm/zoomwintab.vim'

  " === JAVASCRIPT DEVELOPMENT PLUGINS === "
  " plugin enable syntax highlight for styled-components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jonsmithers/vim-html-template-literals'
  
  " plugin add CSS3 rulse support for styled-components
  Plug 'hail2u/vim-css3-syntax'

  " plugin for unittesting
  Plug 'janko/vim-test'
call plug#end() 
