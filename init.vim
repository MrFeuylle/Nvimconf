

"   ██    ██ ██ ███    ███ ██████   ██████
"   ██    ██ ██ ████  ████ ██   ██ ██
"   ██    ██ ██ ██ ████ ██ ██████  ██
"    ██  ██  ██ ██  ██  ██ ██   ██ ██
"██   ████   ██ ██      ██ ██   ██  ██████


set linebreak
set nowrap
set ruler
set number
set showmatch
syntax on
set noswapfile
set mouse=a
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set relativenumber
set splitbelow
set splitright
set wildignorecase
"set encoding=UTF-8
"colo delek
":colorscheme edge
command! W :w
command! WQ :wq
command! Wq :wq
set scrolloff=3

let mapleader=" "

nnoremap <leader>T :FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>b :Telescope buffers<cr>
nnoremap <leader>f :Telescope find_files<cr>
nnoremap <leader>t :Telescope<cr>
nnoremap <leader>o gT
nnoremap <leader>p gt
nnoremap <leader>m I#include <libc.h><cr><cr>int main(int ac, char **av)<cr>{<cr>}<esc>ko
nnoremap <leader>d :windo difft<cr>
nnoremap <leader>do :diffo<cr>

nnoremap ª :m .+1<CR>==
nnoremap º :m .-2<CR>==

inoremap ª <Esc>:m .+1<CR>==gi
inoremap º <Esc>:m .-2<CR>==gi

vnoremap ª :m '>+1<CR>gv=gv
vnoremap º :m '<-2<CR>gv=gv

iabbrev strlen int	ft_strlen(char *str)<enter>{<enter>int	i;<enter><enter>i = 0;<enter><enter>while (str[i])<enter>i++;<enter>return (i);<enter>}

nnoremap <leader>h I#ifndef <c-r>%<esc>gUaWelr_A<cr># define <c-r>%<esc>gUaWelr_A<cr><cr>#endif<esc>

"if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
"    set t_ut=
"endif

"""""""""""""""""""""""""""""""""""""""""""""
"              		 VIMPLUG 
"""""""""""""""""""""""""""""""""""""""""""""

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

onoremap ii ?if (<cr>jjdi{kkf(lci(
call plug#begin()
	Plug 'edkolev/tmuxline.vim'
	Plug 'sainnhe/edge'
	Plug 'ervandew/supertab'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'voldikss/vim-floaterm'
	Plug 'morhetz/gruvbox'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'myusuf3/numbers.vim'
	Plug 'scrooloose/syntastic'
	Plug 'ntpeters/vim-airline-colornum'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""
"              		  EDGE
"""""""""""""""""""""""""""""""""""""""""""""

" Important!!
"if has('termguicolors')
"	set termguicolors
"endif
" The configuration options should be placed before `colorscheme edge`.
"let g:edge_style = 'aura'
"let g:edge_better_performance = 0
"let g:edge_cursor = 'purple'
"set bg=dark
"colorscheme edge

"""""""""""""""""""""""""""""""""""""""""""""
"              		  GRUVBOX
"""""""""""""""""""""""""""""""""""""""""""""

"g:gruvbox_contrast = medium
"colorscheme gruvbox
"set bg=dark
"augroup BgHighlight
"    autocmd!
"    autocmd WinEnter let g:gruvbox_contrast_dark=medium
"    autocmd WinLeave let  g:gruvbox_contrast_dark=soft
"augroup END

"""""""""""""""""""""""""""""""""""""""""""""
"              		  AIRLINE
"""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='edge'

"""""""""""""""""""""""""""""""""""""""""""""
"              		  COLOR CODEeD
"""""""""""""""""""""""""""""""""""""""""""""
let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc']
