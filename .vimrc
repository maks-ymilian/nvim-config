" case insensitive /
set ignorecase

" case insensitive :find
set wildignorecase

" disable mouse
set mouse=

" better :find
set path+=**
set path+=~/.config/nvim
set wildignore+=*/build/**,*/out/**,*/.git/**,*/node_modules/**

" indentation
set tabstop=4
set shiftwidth=4

" numbers
set number
set relativenumber

" indentation lines
set list
set listchars=tab:\│\ 

" cursor line
set cursorline

" disable swap files
set noswapfile

" disable arrow keys which also disables scrolling
nnoremap <Up> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Down> <Nop>

" vim plug
call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'williamboman/mason.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'catgoose/nvim-colorizer.lua'
call plug#end()

" accurate colors
if (has("termguicolors"))
 set termguicolors
endif

" run commands for certain file type
filetype plugin on

" color scheme
syntax enable
colorscheme good
