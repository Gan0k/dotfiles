syntax on
set synmaxcol=500
filetype plugin indent on

set encoding=utf-8
set ruler number smartindent
set wrap linebreak nolist nojoinspaces
set nobackup noswapfile nowritebackup
set history=2000
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set textwidth=78 formatoptions-=t formatoptions+=j
set showcmd showmode hidden wildmenu
set autoread magic matchtime=2
set incsearch ignorecase smartcase showmatch hlsearch
set mouse=
set rulerformat=%17(%l,%c%V\ %o\ %p%%%)

set t_Co=16
set background=light
" set background=dark

" Better autocompletion w/ ^+x ^+o
set omnifunc=syntaxcomplete#Complete

" Disable unused options
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

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
set wildignore=*.swp,*.bak,*.pyc,*.o,*.so
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.gradle set filetype=groovy
au BufNewFile,BufRead *.pl set filetype=prolog

" Do not replace buffer contents when pasting
xnoremap p pgvy

" Search visually selected text
vnoremap // y/<C-R>"<CR>

" Split window shortcuts
nnoremap <F9> 3<C-W><
nnoremap <F10> 3<C-W>+
nnoremap <F11> 3<C-W>-
nnoremap <F12> 3<C-W>>

