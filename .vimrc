set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
set encoding=utf-8        " Encoding
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting
colorscheme desert        " set colorscheme
set number                " show line numbers
highlight LineNr term=bold cterm=NONE ctermfg=Black ctermbg=NONE gui=NONE guifg=Black guibg=NONE
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set wrap                  " wrap text

call plug#begin('~/.vim/plugged')

" Languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" Appearance
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Plugins Settings
let g:lightline = {
     \ 'colorscheme': 'wombat',
     \ }

