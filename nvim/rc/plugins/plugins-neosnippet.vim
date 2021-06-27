let g:neosnippet#snippets_directory = '~/.config/nvim/snp/snippets/'

inoremap <expr><tab> pumvisible() ? "\<C-n>" :
    \ "\<tab>"
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
