" ~/.vimrc by Steve Wang

"" Basic
set number			" Show line numbers
set cursorline			" Highlight current line	
set showmatch	    		" Highlight matching brace
set ruler	    		" Show row and column ruler information

set mouse=a	    		" Use mouse
set scrolloff=999		" Center the cursor
set splitright			" Split to right when ':vsp'
set splitbelow			" Split to below when ':sp'

set visualbell	    		" Use visual bell (no beeping)
set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set wildmenu
" setlocal spell spelllang=en_us

"" Colors
syntax enable			" add color
set termguicolors	
let base16colorspace=256

"" Wrap
set textwidth=100   		" Line wrap (number of cols)		      
set colorcolumn=101		" Length Column market 			      					   
set linebreak	    		" Prevent 
set showbreak=+++   		" Wrap-broken line prefix		      

"" Search
set ignorecase	    		" Always case-insensitive
set smartcase	    		" Enable smart-case search
set hlsearch	    		" Highlight all search results
set incsearch	    		" Searches for strings incrementally

"" Indent
set autoindent	    		" Auto-indent new lines
set tabstop=4			" Set tabs to display as frou spaces
set shiftwidth=4		" Number of auto-indent spaces
set smartindent	    		" Enable smart-indent
set smarttab	    		" Enable smart-tabs
set softtabstop=4		" Number of spaces per Tab

"" Copy and paste
set clipboard+=unnamed		" use the clipboards of vim and win
set paste               	" Paste from a windows or from vim
set go+=a               	" Visual selection automatically copied to the clipboard

"" key maps
noremap j gj
noremap k gk
nnoremap <silent> q :confirm q<CR>
let mapleader = ","
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

"" advance
"set spell spelllang=en_us

"" Plugins
set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" Theme
colorscheme base16-tomorrow-night
let g:airline_theme='base16_tomorrow'
let g:airline_powerline_fonts = 1
