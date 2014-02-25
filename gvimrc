colorscheme molokai
"colorscheme zenburn
if has("win32")
  set guifont=Source_Code_Pro:h9:cANSI
  au GUIEnter * simalt ~x
  so <sfile>:h/visual_studio/visual_studio.vim
else
" set lines=53
" set columns=170
  winpos 30 30
  set guifont=Monospace\ 11
endif
