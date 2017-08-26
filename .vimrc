" LEADER
let mapleader = ","

" COLOR
colorscheme elflord

if has("syntax")
  syntax on
endif

" LINES
set number
"set relativenumber

" HIGHLIGHT SEARCH
set hlsearch

" AUTO CONFIG 
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

set showmatch
set incsearch

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

