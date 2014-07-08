let mapleader=","

let mapleader=","
" write all buffers
nnoremap <leader>va :wqall<cr>
inoremap <leader>va <esc><esc>:wqall<cr>
nnoremap <c-s> :wall<cr>
inoremap <c-s> <esc><esc>:wall<cr>
" put empty lines below or above
nnoremap <c-j> o<esc>k
nnoremap <c-k> O<esc>j
" Toggle case of current word
inoremap <leader>cu <esc>vB~<esc>Ea
nnoremap <leader>cu EvB~<esc>Ea
inoremap ,cy <esc>vBU<esc>Ea
nnoremap ,cy EvBU<esc>Ea
" indent visually
vnoremap < <gv
vnoremap > >gv
" line up line down
vnoremap j gj
vnoremap k gk
nnoremap j gj
nnoremap k gk
" replace selection with text in clipboard
vnoremap r "_dP
" delete without putting into register
nnoremap s "ad
vnoremap s "ad

" open the command buffer
nnoremap <leader>a q:

" write all buffers and copy the current buffer to clipboard
nnoremap <leader>vd :wqall<cr>:!xsel -b < %<cr>
" paste to the sprunge pastebin service
nnoremap <leader>ve :!sprungePaste.sh %:p<cr><cr>
" echo or insert full (absolute) path
nnoremap <leader>vn :echo expand('%:p')<cr>
inoremap <leader>vn <c-r>=expand('%:p')<cr>
" echo or insert filename without extension
nnoremap <c-x> :echo expand("%:t:r")<CR>
" echo or insert filename
nnoremap <leader>vt :echo expand("%:t")<CR>
inoremap <leader>vt <C-R>=expand("%:t")<CR>

" make hilights disappear
nnoremap <c-c> :noh<cr>
" title case
vnoremap <leader>tq :s/\<./\u&/g<cr>:noh<cr>
nnoremap <leader>tq :s/\<./\u&/g<cr>:noh<cr>
" select non-whitespace portion of the current line
nnoremap <leader>i ^vg_

" number of character in buffer or selection
nnoremap <leader>nb :py import vim; print len('\n'.join(vim.current.buffer[:]))<cr>
vnoremap <leader>nv "ay:py import vim; print(len(vim.eval("@a")))<cr>


" case insensitive search
nnoremap / /\c

" " blog publishing
" nnoremap <leader>bs :BlogSave publish<cr><cr>
" nnoremap <leader>bl :BlogList<cr><cr>
" nnoremap <leader>bu :BlogUpload

" " file/buffer finder
" nnoremap <leader>gf :FufFile
" nnoremap <leader>gb :FufBuffer

nnoremap <leader>ss :call VimuxSendText(getline(".") . "\n")<cr>j
inoremap <leader>ss <esc>:call VimuxSendText(getline(".") . "\n")<cr>o
vnoremap <leader>sv :call VimuxSendText(getline(".") . "\n")<cr>
nnoremap <leader>sf :call VimuxSendText(join(getline(1, '$'), "\n") . "\n")<cr>
nnoremap <leader>say :call VimuxOpenRunner()<cr>:call VimuxSendText('python' . "\n")<cr>
nnoremap <leader>sar :call VimuxOpenRunner()<cr>:call VimuxSendText('R' . "\n")<cr>
nnoremap <leader>sab :call VimuxOpenRunner()<cr>
nnoremap <leader>sc :call VimuxCloseRunner()<cr>

" use ctrl-space to auto complete
function! Auto_complete_string()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
    end
endfunction
function! Auto_complete_opened()
    if pumvisible()
        return "\<c-n>\<c-p>\<c-n>"
    else
        return "\<bs>\<C-n>"
    end
endfunction
inoremap <expr> <Nul> Auto_complete_string()



