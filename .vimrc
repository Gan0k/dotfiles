syntax on
set synmaxcol=500
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'mrtazz/simplenote.vim'
Plug 'Raimondi/delimitMate'

call plug#end()

set nocompatible
set number ruler smartindent
set autoindent
set wrap linebreak nolist nojoinspaces
set nobackup noswapfile nowritebackup
set history=2000
set expandtab
set tabstop=4 shiftwidth=4
set smarttab
set softtabstop=0
set textwidth=78 formatoptions-=t formatoptions+=j
set laststatus=2 showcmd hidden wildmenu
set autoread magic matchtime=2
set background=dark
set encoding=utf-8
set incsearch ignorecase smartcase showmatch hlsearch

" Disable unused options
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
vnoremap Q <nop>
vnoremap K <nop>

" Make backspace key work the way it should
set backspace=eol,start,indent
" Disable sounds
set noerrorbells novisualbell t_vb=

" Display wrapped lines
set display+=lastline
" Remove octal recognition
set nrformats-=octal
" Waitings for commands
set ttimeout
set timeoutlen=300

" Special file formats
set wildignore=*.swp,*.bak,*.pyc,*.o,*.so
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.gradle set filetype=groovy
au BufNewFile,BufRead *.pl set filetype=prolog

" Split window shortcuts
nnoremap <F9> 3<C-W><
nnoremap <F10> 3<C-W>+
nnoremap <F11> 3<C-W>-
nnoremap <F12> 3<C-W>>

" Set .txt files to indent with spaces
au BufNewFile,BufRead *.txt silent setl et sw=4

" Paste commands via xsel
noremap <leader>y :silent w !xsel -bi<cr>
noremap <leader>p o<esc>:set paste<cr>:.!xsel -bo<cr>:set nopaste<cr>
noremap <leader>P o<esc>:set paste<cr>:.!xsel -po<cr>:set nopaste<cr>

" Do not replace buffer contents when pasting
xnoremap p pgvy

" Toggle Hexmode command
command -bar Hexmode call ToggleHex()
function ToggleHex()
	let l:modified=&mod
	let l:oldreadonly=&readonly
	let &readonly=0
	let l:oldmodifiable=&modifiable
	let &modifiable=1
	if !exists("b:editHex") || !b:editHex
		let b:oldft=&ft
		let b:oldbin=&bin
		setlocal binary
		let &ft="xxd"
		let b:editHex=1
		%!xxd
	else
		let &ft=b:oldft
		if !b:oldbin
			setlocal nobinary
		endif
		let b:editHex=0
		%!xxd -r
	endif
	let &mod=l:modified
	let &readonly=l:oldreadonly
	let &modifiable=l:oldmodifiable
endfunction

" Use Ranger as file chooser
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

