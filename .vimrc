"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim cheatsheet http://tnerual.eriogerg.free.fr/vimqrc.html                  "
"																			  "
" Jack Farrell .vimrc														  "
" Last Updated 4/3/2018														  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colo elflord		" Color scheme
set colorcolumn=80	" 80 char limit

set number  " Show line number
set encoding=utf-8

" Syntax highlighting
syntax on
set showmode

" Searching
set ignorecase
set smartcase		" Only case sensitive if a pattern contains an uppercase
set hlsearch
set incsearch
set showmatch		" Jumps back to matching brace when one is inserted
set relativenumber
set expandtab
set noswapfile

" Faster inserts
inoremap jk <esc>
nnoremap <Space> i_<Esc>r

" Tab char spacing
set tabstop=4 
set softtabstop=4
set shiftwidth=4

set autoindent
set copyindentd

" Keep cursor at current locatrion when appending below line
nnoremap JmzJ`z

" Center when paging/searching
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-o> <C-o>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Move visual block wizardry
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function(s)															  "
"																			  "
" WinMove from https://github.com/nicknisi/vim-workshop/blob/master/vimrc     "
"																			  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if(match(a:key, '[jk]'))
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
