let g:loaded_gitgutter = 1
execute pathogen#infect("~/vimfiles/bundle/{}")
" syntax on
filetype plugin indent on
set nocompatible
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
nmap <silent> <Leadersv :so $MYVIMRC<CR>
