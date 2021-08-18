set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " Vim Bundle
    Plugin 'gmarik/Vundle.vim'
    " Better Fold
    Plugin 'tmhedberg/SimpylFold'
    " Python Auto-indent
    "Plugin 'vim-scripts/indentpython.vim'
    " Auto-Complete
    "Bundle 'Valloric/YouCompleteMe'
    " Coc.Nvim
    Plugin 'neoclide/coc.nvim', {'branch' : 'release'}
    " Jedi 
    Plugin 'pappasam/coc-jedi', {'do': 'yarn install --frozen-lockfile && yarn build'}
    "Plugin 'davidhalter/jedi-vim'
    " NERDTree
    Plugin 'scrooloose/nerdtree'
    " Syntax Highlightin
    "Plugin 'vim-syntastic/syntastic'
    " Themes
    Plugin  'morhetz/gruvbox'
    Plugin  'altercation/vim-colors-solarized'
    Plugin  'sainnhe/sonokai'
    Plugin  'sainnhe/gruvbox-material'
    Plugin  'rakr/vim-one'
    " Super Searching 
    Plugin 'kien/ctrlp.vim'
    " Commentary shortcuts
    Plugin 'tpope/vim-commentary'
    " Smooth Scrolling
    Plugin 'psliwka/vim-smoothie'
    " Powerline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    "Goyo for writing
    Plugin 'junegunn/goyo.vim'

call vundle#end()
filetype indent on 

" FOLDING
    set foldmethod=indent
    set foldlevel=99
    " SIMPLY FOLD
        let g:SimpylFold_docstring_preview=1

" THEME
    set bg=dark
    colorscheme gruvbox-material   
    " Vim airline theme
        let g:airline_theme='base16_bright'

" NERDTREE
    nmap <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

" Save in sudo 
:cmap w!! w !sudo tee %

syntax on 
let python_highlight_all=1

set hidden
set smartcase
set mouse=a
set cursorline
set incsearch
set hlsearch
set backspace=indent,eol,start
set encoding=utf-8
set number
set nowrap
set clipboard=unnamed
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=4
set expandtab
set laststatus=2
set noshowmode

source $HOME/.config/nvim/coc.vim
