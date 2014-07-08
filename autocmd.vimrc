augroup filetypecmd
    autocmd!
    autocmd filetype c   nnoremap <buffer> <leader>cc :!gcc -o %:p:r %<cr>
    autocmd filetype c   nnoremap <buffer> <leader>cr :!gcc -o %:p:r % && %:p:r<cr>
    autocmd filetype cpp nnoremap <buffer> <leader>cc :!g++ -o %:p:r %<cr>
    autocmd filetype cpp nnoremap <buffer> <leader>cr :!g++ -o %:p:r % && %:p:r<cr>
    autocmd filetype html set fmr=ffff,eeee
augroup END

augroup prepostprocess
    autocmd!
    autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    autocmd BufWritePre <buffer> :echom expand("%:p")
	" update timestamps of each buffer before exit vim
    autocmd VimLeavePre <buffer> :!touch %:p
augroup END

augroup filetypes
    autocmd!
    autocmd! bufread,bufnewfile *.tex setlocal filetype=tex
    autocmd! bufread,bufnewfile *.Rhistory,*.Rprofile setlocal filetype=r
    autocmd bufread,bufnewfile *.cc, *.cpp, *.c++ setlocal filetype=cpp
    autocmd bufread,bufnewfile *.asy setlocal filetype=asy
    " mathematica filetype
    au! BufRead,BufNewFile *.mma      set ft=mma sw=2
augroup END




" function! Pychecktime()
" python << endpy
" import vim
" import time
" import os
" cb = vim.current.buffer
" bufferString = '\n'.join(cb[:]).rstrip()
" with open(cb.name, "r") as currentFile:
"     fileString = currentFile.read().rstrip()
" if bufferString != fileString:
"     vim.command("e! %")
" endpy
" endfunction

" augroup filemonitor
"     autocmd!
" "    autocmd BufWriteCmd *  call Pychecktime()
" augroup END

" autocmd CursorHold * call Timer()
" function! Timer()
" python << endpy
" import vim
" cb = vim.current.buffer
" if '[Command Line]' not in cb.name:
"     vim.command("checktime")
" endpy
" call feedkeys("f\e")
" endfunction

