if exists("g:loaded_prog_snips")
    finish
endif

let g:loaded_prog_snips = 1

autocmd FileType c inoremap ;pr printf("%<++>", <++>);<ESC>0f<c4l
autocmd FileType cpp inoremap ;pr std::cout<< <++> <<std::endl;<ESC>03f<c4l
autocmd FileType python inoremap ;pr print(<++>)<ESC>0f<c4l
autocmd FileType lisp inoremap ;pr (message "%S" <++>)<esc>0f<c4l

autocmd FileType php,c,cpp inoremap ;if if ( <++> ) {<CR><++><CR>}<ESC>2k0f<c4l
autocmd FileType bash,sh inoremap ;if if [[ <++> ]]; then<CR><++><CR>fi<ESC>2k0f<c4l
autocmd FileType vim inoremap ;if if <++> <CR><++><CR>endif<ESC>2k0f<c4l
autocmd FileType lisp inoremap ;if (if <++>)<esc>0f<c4l

autocmd FileType php,c,cpp inoremap ;for for ( <++>; <++>; <++> ) {<CR><++><CR>}<ESC>2k0f<c4l
autocmd FileType bash,sh inoremap ;for for <++>; do<CR><++><CR>done;<ESC>2k0f<c4l
autocmd FileType python inoremap ;for for <++> in <++>:<CR><++><ESC>k0f<c4l
autocmd FileType vim inoremap ;for for <++> in <++><CR><++><CR>endfor<ESC>2k0f<c4l

autocmd FileType php,c,cpp inoremap ;wh while ( <++> ) {<CR><++><CR>}<ESC>2k0f<c4l
autocmd FileType vim inoremap ;wh while <++><CR><++><CR>endwhile<ESC>2k0f<c4l
autocmd FileType php,c,cpp inoremap ;dw do {<CR><++><CR>} while ( <++> );<ESC>2k0f<c4l

autocmd FileType php,javascript,bash,sh inoremap ;fn function <++>(<++>) {<CR><tab><++><CR>return<CR>}<ESC>3k0f<c4l
autocmd FileType c,cpp inoremap ;fn <++> <++>(<++>) {<CR><++><CR><BS>return <++>;<CR>}<ESC>3k0c4l
autocmd FileType python inoremap ;fn def <++>(<++>):<CR><++><CR>return <++><ESC>2k0f<c4l
autocmd FileType vim inoremap ;fn function! <++>(<++>) abort<CR><++><CR>return<CR>endfunction<ESC>3k0f<c4l
autocmd FileType lisp inoremap ;fn (defun <++> ()<cr>)<esc>k0f<c4l
