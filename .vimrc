" Número de linhas
set number
set nocompatible
set incsearch " Busca automática
set wildmenu " Menu com opções
map q :q<CR>
map <C-q> :q!<CR>
filetype off
syntax on
colorscheme desert
set encoding=utf-8

let python_highlight_all=1

" Ativa a divisão da tela
set splitbelow
set splitright

" Compacta o código que está identado
set foldmethod=indent
set foldlevel=99

" Utiliza espaço pra compactar o código
nnoremap <space> za

" Navegação pelas telas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree
autocmd vimenter * NERDTree " Inicia o NERDTree junto com o Vim

" Marca todos os espaços desnecessários nas linhas
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Configurações para arquivos .py
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Configurações para arquivos html
au BufNewFile,BufRead *.html
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" COnfigurações para arquivos .c
au BufNewFile,BufRead *.c
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Configurações do SimplyFold
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_docstring = 1
let b:SimpylFold_fold_docstring = 1
let g:SimpylFold_fold_import = 1
let b:SimpylFold_fold_import = 1

" Inicialização do Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Colocar Plugins aqui
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'zxqfl/tabnine-vim'
call vundle#end()
filetype plugin indent on
