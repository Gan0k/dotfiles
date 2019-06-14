syntax on
set synmaxcol=500
filetype plugin indent on

set nocompatible
set encoding=utf-8
set ruler number smartindent autoindent
set wrap linebreak nolist nojoinspaces
set nobackup noswapfile nowritebackup
set history=2000
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set textwidth=78 formatoptions-=t formatoptions+=j
set showcmd showmode hidden wildmenu wildignorecase
set autoread magic matchtime=2
set incsearch ignorecase smartcase showmatch hlsearch
set mouse=
set rulerformat=%17(%l,%c%V\ %o\ %p%%%)

" Theme stuff
set t_Co=16
set background=dark
colorscheme solarized

" Better autocompletion w/ ^+x ^+o
set omnifunc=syntaxcomplete#Complete

" Run ctags command
command! MakeTags !ctags -R .

" Disable unused options
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

" Bind K to :Ggrep the word under cursor (requires vim-fugitive)
nnoremap K :Ggrep! "\b<C-R><C-W>\b"<CR><CR>:cw<CR>

" Make backspace key work the way it should
set backspace=eol,start,indent
" Disable sounds
set noerrorbells novisualbell t_vb=

" Display wrapped lines
set display+=lastline
" Remove octal recognition
set nrformats-=octal
" Waitings for commands
set ttimeout timeoutlen=300
" Keep a few lines below cursor when scrolling
set scrolloff=4

" Special file formats
set wildignore=*.swp,*.bak,*.pyc,*.o,*.so,*/.git/**/*,*/node_modules/**/*,*/build/**/*
au BufNewFile,BufRead *.md set filetype=markdown | setlocal spell
au BufNewFile,BufRead *.pl set filetype=prolog

" Spell check git commits
autocmd FileType gitcommit setlocal spell

" Auto-complete words when spell check enabled
set complete+=kspell

" Do not replace buffer contents when pasting
xnoremap p pgvy

" Search visually selected text
vnoremap // y/<C-R>"<CR>

" Split window shortcuts for resizing
nnoremap <F9> 3<C-W><
nnoremap <F10> 3<C-W>+
nnoremap <F11> 3<C-W>-
nnoremap <F12> 3<C-W>>

" Split window shortcuts for moving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Search down into subfolders
set path+=**

" shortcuts to bring up find command
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *<Paste>

" open list to naviate between buffers
nnoremap gb :ls<CR>:b<Space>
