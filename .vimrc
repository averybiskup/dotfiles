set backspace=2
set number
set noswapfile
set scrolloff=12
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2 
set ruler
set ignorecase
set laststatus=2
set splitright
set colorcolumn=80
highlight ColorColumn ctermbg=gray
set textwidth=79
set hlsearch
set number relativenumber
set nu rnu
set autoindent
set fillchars+=vert:\ 
hi VertSplit guibg=black guifg=LightGray ctermbg=black ctermfg=black

hi LineNr guibg=bg
set foldcolumn=1
hi FoldColumn guibg=black guifg=LightGray ctermbg=black ctermfg=LightGray
 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:lightline = { 'colorscheme': 'onehalfdark' }


call plug#begin('~/.vim/plugged')

   " Make sure you use single quotes

   " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'
    Plug 'preservim/nerdcommenter'
    Plug 'itchyny/lightline.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'xuhdev/vim-latex-live-preview'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mattn/emmet-vim'

   " Any valid git URL is allowed
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'https://github.com/tpope/vim-surround.git'
    Plug 'https://github.com/joshdick/onedark.vim'
    Plug 'https://github.com/joshdick/onedark.vim'
    Plug 'https://github.com/altercation/vim-colors-solarized.git'
    Plug 'https://github.com/sainnhe/everforest.git'
    Plug 'https://github.com/tomasr/molokai.git'  
    Plug 'https://github.com/mxw/vim-prolog.git'
    Plug 'https://github.com/leafgarland/typescript-vim.git'

   " On-demand loading
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

   " Using a non-master branch
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

   " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    Plug 'fatih/vim-go', { 'tag': '*' }
    
   " Plugin options
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

   " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    Plug 'junegunn/fzf.vim'

   " Unmanaged plugin (manually installed and updated)
    Plug '~/my-prototype-plugin'
    
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'

   " Initialize plugin system
call plug#end()

"autocmd vimenter * colorscheme gruvbox
filetype plugin on
let mapleader = ","

" Colorscheme
syntax on
syntax enable
set background=dark

" Setting highlight configurations
hi Visual term=reverse cterm=reverse

" Remaps
noremap <Left> :echo "No left for you!"<CR>
noremap <Right> :echo "No right for you!"<CR>
"noremap <Up> :echo "No up for you!"<CR>
"noremap <Down> :echo "No down for you!"<CR>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
nnoremap <C-F> :Files<CR>

" Emmet
let g:user_emmet_mode='n'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-N> gT<CR>
nnoremap <C-M> gt<CR>

noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>
inoremap <CR> <CR>x<BS>

" better searching movement
nnoremap n nzz
nnoremap N Nzz

" Leader remaps
map ,t :tabnew . <Enter>
map ss :w <Enter>

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

