call plug#begin('~/.vim/plugged')

"Plugins-----------------------------------------------------------------

Plug 'valloric/youcompleteme'

Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

"NERDTree----------------------------------------------------------------

autocmd VimEnter * NERDTree | wincmd p

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
			\ quit | endif

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd BufWinEnter * silent NERDTreeMirror

"Syntastic-----------------------------------------------------------------

call plug#end()

execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Vim-Editor----------------------------------------------------------------

set tabstop=4

"Maping-------------------------------------------------------------------

nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l

nnoremap <TAB> gt
nnoremap <S-TAB> gT

vnoremap < <gv
vnoremap > >gv
