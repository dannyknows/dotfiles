" TODO
" - autocomplete commands/find a new plugin
" - syntax highlighting for each language i use 
" - multiline selection and commenting in/out
" - linting? am i a noob for relying on linting?
"
"
"                               ___          ___          ___     
"        ___       ___         /__/\        /  /\        /  /\    
"       /__/\     /  /\       |  |::\      /  /::\      /  /:/    
"       \  \:\   /  /:/       |  |:|:\    /  /:/\:\    /  /:/     
"        \  \:\ /__/::\     __|__|:|\:\  /  /:/~/:/   /  /:/  ___ 
"    ___  \__\:\\__\/\:\__ /__/::::| \:\/__/:/ /:/___/__/:/  /  /\
"   /__/\ |  |:|   \  \:\/\\  \:\~~\__\/\  \:\/:::::/\  \:\ /  /:/
"   \  \:\|  |:|    \__\::/ \  \:\       \  \::/~~~~  \  \:\  /:/ 
"    \  \:\__|:|    /__/:/   \  \:\       \  \:\       \  \:\/:/  
"     \__\::::/     \__\/     \  \:\       \  \:\       \  \::/   
"         ~~~~                 \__\/        \__\/        \__\/    
                                                    
"  _______          _
" |__   __|        | |
"    | | ___   ___ | |___
"    | |/ _ \ / _ \| / __|
"    | | (_) | (_) | \__ \
"    |_|\___/ \___/|_|___/

"   VimPlug - vim plugin manager  
"   Glances - process monitor 

"  _____  _             _
" |  __ \| |           (_)
" | |__) | |_   _  __ _ _ _ __  ___
" |  ___/| | | | |/ _` | | '_ \/ __|
" | |    | | |_| | (_| | | | | \__ \
" |_|    |_|\__,_|\__, |_|_| |_|___/
"                  __/ |
"                 |___/

call plug#begin('~/.vim/plugged')

" Languages

Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'

" Vim Utils

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
" ^ Linting
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
" ^ adds closing parentheses and quotes

" Colour Schemes

Plug 'gruvbox-community/gruvbox'
Plug 'nightsense/carbonized'
Plug 'gryf/wombat256grf'
Plug 'artanikin/vim-synthwave84'
Plug 'jnurmine/zenburn'
Plug 'nanotech/jellybeans.vim'

call plug#end()

"   _____      _   _   _
"  / ____|    | | | | (_)
" | (___   ___| |_| |_ _ _ __   __ _ ___
"  \___ \ / _ \ __| __| | '_ \ / _` / __|
"  ____) |  __/ |_| |_| | | | | (_| \__ \
" |_____/ \___|\__|\__|_|_| |_|\__, |___/
"                               __/ |
"                              |___/

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set cursorline

highlight ColorColumn ctermbg=0 guibg=lightgrey

" Syntastic Settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Language Linting
let g:syntastic_javascript_checkers=['eslint'] "Requires ESLint to be installed


" Current Colour Scheme
colorscheme jellybeans 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
