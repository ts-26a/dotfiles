function! LightlineFilename()
    let l:replaced = substitute(expand('%:p'), $HOME, '~', 1)
    let l:len_rep = strlen(l:replaced)
    if l:len_rep < (winwidth('%') - 45)
        return l:replaced
    else
        return '...' . strpart(l:replaced, l:len_rep - 30, 30)
    endif
endfunction

function! LightlineFiletype()
  return strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft'
endfunction

function! LightlineFileformat()
  return &fileformat . ' ' . WebDevIconsGetFileFormatSymbol())
endfunction

let g:lightline = {
    \ 'component_function' : {
    \     'filetype' : 'LightlineFiletype',
    \     'filename' : 'LightlineFilename',
    \     'fileformat': 'LightlineFileformat',
    \ },
    \ 'colorscheme': 'darkspace',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified' ]],
    \   'right': [['lineinto'],
    \             ['fileencoding', 'filetype']],
    \ },
\ }
