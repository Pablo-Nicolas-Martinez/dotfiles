" Directory for the plugins
call plug#begin()

" Actual plugin installation
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
" Git and Latex file management
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'

" End of the plugin list
call plug#end()

" Remap the leader key
let mapleader=" "

" Terminal colors

" Other declarations
set clipboard+=unnamedplus
set nocompatible
set showmatch
set mouse=v
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number relativenumber
set wildmode=longest,list

" Commands regarding formatting long lines
set linebreak
map <leader>f :g/./ normal gqq<return>:nohlsearch<CR>
set cc=80 " Vertical line at 80 plus custom color
highlight ColorColumn ctermfg = none ctermbg = 8 cterm = none

" Things to comment
filetype plugin indent on
syntax on

" Commands for moving with the dead keys
noremap j h
noremap k j
noremap l k
noremap ñ l

" =========================================================================== "
" Remapping Nerdtree commands
map <C-n> :NERDTreeToggle<CR>

" =========================================================================== "
" Vimtex remapping command
map <leader>ll :VimtexCompile<return>
map <leader>lv :VimtexView<return>

" Get rid of mode messages
set noshowmode

" =========================================================================== "
" Colors and theming
highlight LineNr ctermfg = 7 ctermbg = none cterm = none
highlight CursorLineNr ctermfg = 11 ctermbg = none cterm = none
highlight Comment ctermfg = 14 ctermbg = none cterm = italic
" Constant refers to ....
highlight constant ctermfg = 13 ctermbg = none cterm = none 

" Set no show mode to get rid of insert mode as lightline is already installed
set noshowmode

" Specifying airline themes
let g:airline_theme = 'solarized'

" Airline font configuration
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_branch_prefix = ''
let g:airline_readonly_symbol = ''
let g:airline_linecolumn_prefix = ''

" =========================================================================== "
" Vimtex plugin configuration
let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nrv'
let g:vimtex_view_general_viewer = 'zathura'

