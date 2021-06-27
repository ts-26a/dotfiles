inoremap jl j
inoremap <silent> <C-s> <C-o>:w<CR>
imap <silent> jj <esc>:w<CR>
imap <silent> jk <esc>:w<CR>noh<CR>a
imap <silent> <C-e> <esc>:w<CR>$a
imap <silent> <C-a> <esc>:w<CR>^i
imap <silent> <Up> <C-o>:w<CR>
imap <silent> <Down> <C-o>:w<CR>
imap <silent> <Left> <C-o>:w<CR>
imap <silent> <Right> <C-o>:w<CR>

noremap j gj
noremap k gk
noremap <silent> <leader><leader> :<C-u>noh<CR>
noremap <C-j> 20j
noremap <C-k> 20k
noremap <silent> dd dd:w<CR>
noremap <silent> dG dG:w<CR>
noremap <silent> dgg dgg:w<CR>
noremap <silent> p :<C-u>set paste<CR>p:set nopaste<CR>
noremap <leader>f :<C-u>Fern .<CR>
noremap + <C-a>
noremap - <C-x>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
