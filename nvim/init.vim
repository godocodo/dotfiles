set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " Vim Bundle
    Plugin 'gmarik/Vundle.vim'

    " NCM2 and dependencies
    Plugin 'roxma/nvim-yarp'
    Plugin 'ncm2/ncm2'

    " Iron.nvim for python REPL 
    Plugin 'hkupty/iron.nvim'

    " Fugitive vim for Git integration
    Plugin 'tpope/vim-fugitive'

    " Better Fold
    Plugin 'tmhedberg/SimpylFold'

    " NERDTree
    Plugin 'scrooloose/nerdtree'

    " Syntax Highligthing
    Plugin 'vim-syntastic/syntastic'

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

    " Juptyter-nvim for viewing .ipynb files (doesn't work?)
    Plugin 'ahmedkhalf/jupyter-nvim'

    " Themes
    Plugin  'morhetz/gruvbox'
    Plugin  'altercation/vim-colors-solarized'
    Plugin  'sainnhe/sonokai'
    Plugin  'sainnhe/gruvbox-material'
    Plugin  'rakr/vim-one'
    Plugin  'arcticicestudio/nord-vim'


call vundle#end()
filetype indent on 

" AUTOCOMPLETE
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  set completeopt=menuone,noselect,noinsert
  set shortmess+=c
  "make it fast
  let ncm2#popup_delay = 5
  let ncm2#complete_length = [[1,1]]
  " Use new fuzzy based matches
  let g:ncm2#matcher = 'substrfuzzy'
  " Use <TAB> to select the popup menu:
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  " NOTE: you need to install completion sources to get completions. Check
  " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
  Plugin 'ncm2/ncm2-bufword'
  Plugin 'ncm2/ncm2-path'
  Plugin 'ncm2/ncm2-github'
  Plugin 'ncm2/ncm2-jedi'
  Plugin 'ncm2/ncm2-pyclang'

" FOLDING
    set foldmethod=indent
    set foldlevel=99
    " SIMPLY FOLD
        let g:SimpylFold_docstring_preview=0

" THEME
    set bg=dark
    colorscheme gruvbox-material   
    " Vim airline theme
        let g:airline_theme='base16'

" SYNTASTIC
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  
  let g:syntastic_check_on_open = 0
  let g:syntastic_cursor_column = 0
  let g:syntastic_always_populate_loc_list = 0
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_error_symbol = "\u2717"
  let g:syntastic_warning_symbol = "\u26A0"

" NERDTREE
    nmap <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

" TERMINAL EMULATOR
  tnoremap <Esc> <C-\><C-N>

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

"source $HOME/.config/nvim/coc.vim
