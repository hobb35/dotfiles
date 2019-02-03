" my nvim config

" Plugin list starts
call plug#begin('~/.dotfiles/nvim/plugged')

" Plugins
Plug 'whatyouhide/vim-gotham'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
Plug 'gf3/molotov'
Plug 'scrooloose/nerdcommenter'
Plug 'arcticicestudio/nord-vim'

call plug#end()

" Set 256 colours, dark background, and molotov
"
set t_Co=256
set background=dark

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12

" let g:airline_theme = 'molotov'
"if filereadable("~/.dotfiles/nvim/color/molotov.vim")
"  colorscheme molotov
"end

colorscheme molotov

" let g:airline_theme = 'molotov'
" colorscheme nord

" colorscheme gotham

" for nerdcommenter
filetype plugin on

" If using airline.vim:
" let g:airline_theme='molotov'

syntax on
set ruler               " Show the line and column numbers of the cursor.
" set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
" set modeline            " Enable modeline.

set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup            	" Don't create annoying backup files
set encoding=utf-8              " Set default encoding to UTF-8
set laststatus=2
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set nu " Enable line numbers

" set tabstop=4 shiftwidth=4 expandtab
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Leader key is like a command prefix. 
" let mapleader='z'
 "let maplocalleader='\'

