set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set nu!
colorschem desert
syntax enable
syntax on

"设置 > <为缩进4个字符
set shiftwidth=4
set softtabstop=4
set tabstop=4
set ai
set si

"程序跳转插件ec57w32.zip
set tags=tags;
set autochdir
"窗口管理插件taglist-45
let Tlist_Show_One_File=1
"文件管理插件：
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"多文件插件
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1
"快速切换头文件/源文件
nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>

"快捷注释插件
let mapleader = ","


"自动添加注释插件
map fg :Dox<cr>

let g:DoxygenToolkit_briefTag_pre="@Breif:    "
let g:DoxygenToolkit_paramTag_pre="@Param:  "
let g:DoxygenToolkit_returnTag="@Returns:   "
let g:DoxygenToolkit_authorName="Zelinyu"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_blockHeader="======================="
let g:DoxygenToolkit_blockFooter="======================="

"启用自带折叠功能
set foldmethod=marker

"设置编码
"=1
"快速切换头文件/源文件
nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>

"快捷注释插件
let mapleader = ","


"自动添加注释插件
map fg :Dox<cr>

let g:DoxygenToolkit_briefTag_pre="@Breif:    "
let g:DoxygenToolkit_paramTag_pre="@Param:  "
let g:DoxygenToolkit_returnTag="@Returns:   "
let g:DoxygenToolkit_authorName="Zelinyu"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_blockHeader="======================="
let g:DoxygenToolkit_blockFooter="======================="

"启用自带折叠功能
set foldmethod=marker

"设置编码


