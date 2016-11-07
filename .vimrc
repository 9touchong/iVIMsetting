set nocompatible

"添加bundle的配置的目标文件
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

filetype plugin indent on

" Highlight current line
">au WinLeave * set nocursorline nocursorcolumn
">au WinEnter * set cursorline cursorcolumn
">set cursorline cursorcolumn

" Javascript syntax hightlight 无此项就没有花花绿绿的颜色
syntax enable

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Color scheme
set nu
set t_Co=256
set background=dark
colorscheme molokai

" Search results high light
set hlsearch

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

