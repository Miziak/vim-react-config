if has('win32')
  let &shell='cmd.exe'
  let $TERM=''
else
  let $SHELL='/bin/sh'
  set shell=/bin/sh
endif

source $XDG_CONFIG_HOME/nvim/plugins.vim
source $XDG_CONFIG_HOME/nvim/config/vim.vim
source $XDG_CONFIG_HOME/nvim/config/plugins.vim
source $XDG_CONFIG_HOME/nvim/config/keybindings.vim
source $XDG_CONFIG_HOME/nvim/config/commands.vim
