" LEADER
let mapleader = ","

" COLOR
colorscheme evening
:syntax on

" LINES
set number
set relativenumber

" HIGHLIGHT SEARCH
set hlsearch

" MY MAPPINGS
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <space> viw
nnoremap - ddp
nnoremap _ ddkkp
nnoremap <CR> $a<CR><ESC>
nnoremap <BS> "_ddk

function! Backtab ()
	let c = 0
	let val = ""
	while c < &tabstop
		let val = val . "<backspace>"
		let c += 1
	endwhile
	execute "inoremap <silent> <S-Tab> " . val
endfunction
call Backtab()

" EDIT_VIMRC
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

