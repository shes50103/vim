
call plug#begin('~/.vim/plugged')

Plug 'vim-ruby/vim-ruby'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/tagalong.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'andrewradev/splitjoin.vim'

call plug#end()


let mapleader = " "
vmap <D-c> y
nmap <D-v> p
imap <TAB> <ESC>>>i
imap <S-TAB> <ESC><<i
nmap <S-TAB> <<
vmap <S-TAB> <
imap jj <ESC>
imap <Leader>s <ESC>:w<CR>
map <Leader>s :w<CR>
noremap <D-s> :w<CR>
nmap <Enter> o
map <Leader>cl :set background=light<CR>
map <Leader>cd :set background=dark<CR>
map <Leader>q :q!<CR>
map <Leader>b :Gblame<CR>
map <Leader>v :e $MYVIMRC<CR>
map <Leader>n :set invnumber<CR>
map <Leader>g :GitGutterToggle<CR>
map <Leader>j :jumps<CR>
set clipboard=unnamed
set cursorline
set noswapfile

"AndrewRadev/sideways.vim
map gs gS
map gj gJ


"-----------
" tab and space
"-----------
set softtabstop=2
set shiftwidth=2
set expandtab
set showtabline=2

"-----------
" search
"-----------
set hlsearch
set ignorecase
set incsearch

"-----------
" filetype
"-----------
filetype on
filetype indent on
filetype plugin on

"-----------
" ColorScheme
"-----------
syntax on

try
  colorscheme gruvbox
catch
endtry

" 視窗切換時候顯示/隱藏游標底線
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" 存檔時自動把行末多餘的空白刪除
autocmd BufWritePre * :%s/\s\+$//e

" 按下 F5 執行程式
if executable("ruby")
  autocmd BufRead,BufNewFile *.rb noremap <Leader>5 :% w !ruby -w<Enter>
else
  autocmd BufRead,BufNewFile *.rb noremap <Leader>5 :echo "you need to install Ruby first!"
endif

if executable("node")
  autocmd BufRead,BufNewFile *.js noremap <Leader>5 :% w !node<Enter>
else
  autocmd BufRead,BufNewFile *.rb noremap <Leader>5 :echo "you need to install Node.js first!"
endif

