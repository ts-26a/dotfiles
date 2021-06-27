function! s:get_id(t)
    let id = synID(line('.'), col('.'), 1)
    if a:t
        return synIDtrans(id)
    else
        return id
    endif
endfunction

function! s:get_attr(id)
    let name = synIDattr(a:id, 'name')
    let gfg = synIDattr(a:id, 'fg', 'gui')
    let gbg = synIDattr(a:id, 'bg', 'gui')
    return {
        \ 'name': name,
        \ 'gfg': gfg,
        \ 'gbg': gbg
    \ }
endfunction

function! s:get_syn_info()
    let syn_ = s:get_attr(s:get_id(0))
    echo '[name]' . syn_.name
        \ . ' [gfg]' . syn_.gfg
        \ . ' [gbg]' . syn_.gbg
    let syn_ = s:get_attr(s:get_id(1))
    echo '[name]' . syn_.name
        \ . ' [gfg]' . syn_.gfg
        \ . ' [gbg]' . syn_.gbg
endfunction

command! SyntaxInfo call s:get_syn_info()

command! DeinRemove :call map(dein#check_clean(), "delete(v:val, 'rf')") | :call dein#recache_runtimepath()
command! DeinUpdate :call dein#check_update(v:true)
