"        1         2         3         4         5         6         7         8         9         10        11        12        13        14        15
"234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901
" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()

" VIM Optimization Settings
inoremap jk <ESC>

" No-Shift Colon
nnoremap ; :

let mapleader = "\<Space>"
filetype plugin indent on
set encoding=utf-8

syntax on
set nocompatible " Disable vi-compatibility
set cul
"set colorcolumn=80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 18)

colorscheme elflord
"colorscheme darkblue

" With ASCII
"set listchars=tab:>~,nbsp:_,trail:.
" With Unicode
exec "set listchars=tab:\uBB\uBB,trail:\uB7"
set list

"			sdfsdfsdfs                
"---------------------------------------------------
"  Håkan  via digraphs
" Å 

"234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901

set number
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set ruler

set laststatus=2 " Always show the statusline
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

autocmd BufEnter * :syntax sync fromstart
set cul

"Autodetecting Compression Encoding / Decoding F5/F6
map <F5> <Esc>: ?BEGIN-COMPRESSED-CODE-BLOCK?2, /\n.*END-COMPRESSED-CODE-BLOCK/-1 ! python -c "import zlib;import sys;testcode=zlib.compress(sys.stdin.read()).encode('base64'); N=(len(testcode.split())/15)+1; sys.stdout.write('\n'.join(testcode.split()).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('\n',' ',N).replace('\n','  ',1).replace('  ','\n')) " <CR><CR>
map <F6> <Esc>: ?BEGIN-COMPRESSED-CODE-BLOCK?2, /\n.*END-COMPRESSED-CODE-BLOCK/-1 ! python -c "import zlib; import sys; sys.stdout.write(zlib.decompress(sys.stdin.read().replace(' ','\n').decode('base64')))" <CR><CR>



nnoremap <F3> :NumbersToggle<CR>
"filetype plugin on


"Go To Last Position
autocmd BufReadPost * 
\ if line("'\"") > 0 && line("'\"") <= line("$") | 
\   exe "normal g`\"" | 
\ endif 


cmap w!! %!sudo tee > /dev/null %

"Split Window Toggle
nnoremap <silent> <C-l> <C-w>w

