if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nnoremap <Leader>f :Ack!<Space>

