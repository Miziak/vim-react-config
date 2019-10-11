call plug#begin('$HOME/.config/nvim/plugged')
  " === GENERAL PURPOSE PLUGINS === "
  " nice monokai colorsheme
  Plug 'patstockwell/vim-monokai-tasty'

  " plugin for easy comments
  Plug 'tomtom/tcomment_vim'

  " plugin show indentation lines
  Plug 'Yggdroot/indentLine'

  " plugin add actions for serrounding text obiects
  Plug 'tpope/vim-surround'

  " plugin add nice folder tree browser
  Plug 'scrooloose/nerdtree'

  " plugin add line under buffer providing info about files
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " plugin add git integration to vim
  Plug 'tpope/vim-fugitive'

  " plugin for sippets engine
  Plug 'SirVer/ultisnips'

  " plugin enchance powerful vim repeat feature to repeat plugins motions and
  " actions
  Plug 'tpope/vim-repeat'

  " plugin add indent text object
  Plug 'michaeljsmith/vim-indent-object'

  " fuzzy finder engine for vim
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  " plugin for 'smooth' scroll
  Plug 'yuttie/comfortable-motion.vim'

  " plugin provide powerful intellisense engine and language servers support
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

  " === OTHER PLUGINS === "
  " plugin disable repeat hjkl motions to optimize workflow by force usting
  " 'bigger' motions like w, e, b, B
  Plug 'takac/vim-hardtime'

  " plugin for note taking 
  Plug 'jceb/vim-orgmode'

  " plugin add icons for file types
  Plug 'ryanoasis/vim-devicons'

  " === JAVASCRIPT DEVELOPMENT PLUGINS === "
  " plugin enable syntax highlight for jsx in files
  Plug 'MaxMEllon/vim-jsx-pretty'
  
  " plugin provide better highlight for es6 javascript
  Plug 'othree/yajs.vim'

  " plugin add syntax highlight for some js libraries
  Plug 'othree/javascript-libraries-syntax.vim'

  " plugin enable syntax highlight for styled-components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  
  " plugin add CSS3 rulse support for styled-components
  Plug 'hail2u/vim-css3-syntax'
call plug#end() 
