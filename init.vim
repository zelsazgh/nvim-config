set pyx=0
call plug#begin('~/.nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yggdroot/leaderf'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
call plug#end()
let g:config_home = $HOME . '/.nvim'
let g:plug_config = g:config_home . '/plugin_config'
"Load Plugin Config
source $HOME/.nvim/gui.vim
source $HOME/.nvim/plugin_config/emmet.vim
source $HOME/.nvim/plugin_config/rainbow.vim
source $HOME/.nvim/plugin_config/defx.vim
source $HOME/.nvim/plugin_config/airline.vim
source $HOME/.nvim/plugin_config/nerdcommenter.vim
let config_list = split(globpath(g:plug_config,'*.vim'),'\n')
for config_file in config_list
	exec "source " . config_file
endfor

