set backspace=indent,eol,start
set hidden
set noswapfile
let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"

set path=.,**


"Start of vim-plug manager
call plug#begin()

	Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
	Plug 'vim-airline/vim-airline'
	Plug 'lokaltog/powerline-fontpatcher' 	
	Plug 'vim-airline/vim-airline-themes'
        Plug 'tpope/vim-fugitive'
	Plug 'dense-analysis/ale'
	Plug 'nvie/vim-flake8'
call plug#end()
"End vim-plug manager

let g:airline_theme='light'

"Activates use powerline symbols (supported by the hack font family)
let g:airline_powerline_fonts = 3

" Vimscript initialization file
colorscheme nightfly

set number

syntax on

set t_Co=256

set foldmethod=indent

set foldlevel=99


