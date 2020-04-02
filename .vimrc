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

" Optional:
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
" Color
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'vim-scripts/wombat256.vim'

call plug#end()

let mapleader = " "
" let  mapleader = ","
vmap <D-c> y
nmap <D-v> p
map <TAB> >>
nmap <S-TAB> <<
vmap <S-TAB> <
imap jj <ESC>
nmap <Enter> o
"-----------
" ColorSchema
"-----------
syntax on

try 
  colorscheme gruvbox
catch
endtry
