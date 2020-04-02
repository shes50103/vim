nnoremap <leader>2 :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeMode = 2

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

