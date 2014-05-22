if has("gui") == 0
  let g:loaded_gitgutter = 1
endif
if has("win32")
  execute pathogen#infect("~/vimfiles/bundle/{}")
else
  execute pathogen#infect()
endif
syntax on
filetype plugin indent on
set nocompatible
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cursorline
set relativenumber
set hlsearch
set incsearch
set smartcase
set hidden
set wildmode=longest,list
" Types of files to ignore when autocompleting things
set wildignore+=*.o,*.class,*.git,*.svn,*.obj
set fileformats=unix,dos
set fileformat=unix
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
nnoremap <silent> <C-l> :<C-u>let @/=""<CR><C-l>
set listchars=tab:>~,nbsp:_,trail:.
set list
autocmd BufNewFile,BufRead .gitconfig.* setf gitconfig
" .md is Markdown
au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn, setf markdown
colorscheme molokai
" always display status line
set laststatus=2
" start scrolling when <scrolloff> lines away from top or bottom
set scrolloff=10
set noswapfile
set nobackup

so <sfile>:h/cmake-help.vim
so <sfile>:h/disable-cursorkeys.vim
runtime macros/matchit.vim

" System default for mappings is now the "," character
" let mapleader = ","
" cd to the directory containing the file in the buffer
nmap <silent> <Leader>cd :lcd %:h<CR>
" nmap <silent> <Leader>cr :lcd <c-r>=FindGitDirOrRoot()<cr><cr>
nmap <silent> <Leader>md :!mkdir -p %:p:h<CR>
" Turn off that stupid highlight search
nmap <silent> <Leader>n :nohls<CR>
" set text wrapping toggles
nmap <silent> <Leader>ww :set invwrap<CR>:set wrap?<CR>
" Edit the vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>
nmap <silent> <F8> :TagbarToggle<CR>

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.dll let &bin=1
  au BufReadPost *.dll if &bin | %!xxd
  au BufReadPost *.dll set ft=xxd | endif
  au BufWritePre *.dll if &bin | %!xxd -r
  au BufWritePre *.dll endif
  au BufWritePost *.dll if &bin | %!xxd
  au BufWritePost *.dll set nomod | endif
augroup END

if filereadable(expand("<sfile>:h") . "/vimrc.local")
  so <sfile>:h/vimrc.local
endif
