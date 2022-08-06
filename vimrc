set number
set showcmd
set relativenumber
set autoindent
set showmatch
set omnifunc=syntaxcomplete#Complete
set background=dark 
let mapleader=","

"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')

"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

imap jj <Esc>
imap ZZ <Esc>:wq<CR>
imap ZQ <Esc>:q!<CR>
nmap j gj
nmap k gk
set t_Co=256   
set clipboard=unnamed
" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

inoremap <leader>[ =><Space>{<CR>}<Esc>ko 
inoremap <leader>; <C-o>A;
noremap <leader>; <C-o>A;
noremap <leader>f va{Vy
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <silent><leader>t :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
nnoremap <C-p> :GFiles<Cr>
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP


"""" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


call plug#begin()
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-unimpaired'
Plug 'morhetz/gruvbox'
Plug 'git@github.com:preservim/nerdtree.git'
call plug#end()

colorscheme  gruvbox      " good colorschemes: murphy, slate, molokai, badwolf, solarized
