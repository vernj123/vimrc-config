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
	Plug 'vim-airline/vim-airline-themes'
        Plug 'tpope/vim-fugitive'
	Plug 'dense-analysis/ale'
	Plug 'nvie/vim-flake8'
	Plug 'jpalardy/vim-slime'
        Plug 'vim-scripts/AutoComplPop'

	"useful language related snippets (ultisnips is the engine)
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


call plug#end()
"End vim-plug manager


let g:airline_theme='light'

let g:slime_target = "tmux"


"Activates use powerline symbols (supported by the hack font family)
let g:airline_powerline_fonts = 3

" Vimscript initialization file
colorscheme nightfly

set number

syntax on

set t_Co=256

set foldmethod=indent

set foldlevel=99

" Autocomplete and spellcheck options
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c


" Navigate the complete menu items like CTRL+n / CTRL+p would
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would
inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"

"removes delay when going back to normal mode
set ttimeoutlen=0

"turn off auto comment character for next line after comment Vimscript files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal formatoptions-=ro
augroup END

"turn off auto comment character for next line after comment
set formatoptions-=ro

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/my-snippets/UltiSnips']


