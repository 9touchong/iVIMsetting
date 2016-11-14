set nocompatible

"添加bundle的配置的目标文件
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

filetype plugin indent on

" Highlight current line 这三行是设置当前坐标有横竖两条对齐参考线个人感觉看着难受 
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
">set nu 设置行号 :set nu或者:set number都可以 :setnonu取消
set t_Co=256
set background=dark
colorscheme molokai

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

" Search results high light
set hlsearch

" web相关 html js and so on
let g:html_indent_tags = 'li\|p'
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
autocmd Syntax javascript set syntax=jquery " JQuery syntax support

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

