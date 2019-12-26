if has('win32')
  let &shell='cmd.exe'

	source $HOME/AppData/Local/nvim/plugins.vim
	source $HOME/AppData/Local/nvim/config/vim.vim
	source $HOME/AppData/Local/nvim/config/plugins.vim
	source $HOME/AppData/Local/nvim/config/keybindings.vim
	source $HOME/AppData/Local/nvim/config/commands.vim
else
	let $SHELL='/bin/sh'

	source $HOME/.config/nvim/plugins.vim
	source $HOME/.config/nvim/config/vim.vim
	source $HOME/.config/nvim/config/plugins.vim
	source $HOME/.config/nvim/config/keybindings.vim
	source $HOME/.config/nvim/config/commands.vim
endif
