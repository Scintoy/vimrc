set nocompatible
filetype on 
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Plugin 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'solarnz/thrift.vim'
" Bundle 'maralla/completor.vim'
Bundle 'godoctor/godoctor.vim'
Bundle 'fatih/vim-go'
Bundle 'mzlogin/vim-markdown-toc'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on
set backspace=2
let mapleader = ','
set number
set ts=4
set expandtab
set autoindent

" jedi 配置
let g:completor_python_binary = '/usr/local/bin/python'

" nerdtree 设置
map <C-e> :NERDTreeToggle<CR>
nnoremap H gT
nnoremap L gt
let NERDTreeIgnore=['\.pyc']


" solarized 配置
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized


" airline 配置
set laststatus=2
let g:airline#extensions#tabline#enabled = 1


" fugitive 配置
map <leader>gb :Gblame<CR>


" YouCompleteMe 配置



" 张伟老师completor配置
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"


" godoctor 配置
if exists("g:did_load_filetypes")
  filetype off
  filetype plugin indent off
endif
set rtp+=~/.vim/godoctor.vim
filetype plugin indent on
syntax on
