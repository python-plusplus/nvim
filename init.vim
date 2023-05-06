
"Enable Undo Persistence 
set undofile 
"Save undo persistence files in undodir
set undodir=~/.config/nvim/undodir

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list listchars=tab:>\ ,trail:+,eol:$

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

syntax on
filetype on

set expandtab
set autoindent
set nu
set ruler
set mouse=a

packadd! dracula
colorscheme dracula
set number
set softtabstop=4
set tabstop=4
set shiftwidth=4
set nolist 


setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u



" C settings
"
set autoindent 
set smartindent


autocmd filetype c noremap <F8> <ESC> :w <CR> :term gcc -g -std=gnu99 -Wall -o %< % && ./%<<CR>
autocmd filetype c inoremap <F8> <ESC> :w <CR> :term gcc -g -std=gnu99 -Wall -o "%<" "%" && "./%<"<CR>


autocmd filetype cpp noremap <F8> <ESC> :w <CR> :term g++ -fsanitize=address -std=c++20 -DONPC -O2 -o %< % && ./%<<CR>
autocmd filetype cpp inoremap <F8> <ESC> :w <CR> :term g++ -fsanitize=address -std=c++20 -DONPC -O2 -o "%<" "%" && "./%<"<CR>


autocmd filetype python noremap <F8> <ESC> :w <CR> :term python3 %<CR>
autocmd filetype python inoremap <F8> <ESC> :w <CR> :term python3 %<CR>

call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tex_conceal>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

call plug#end()

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


