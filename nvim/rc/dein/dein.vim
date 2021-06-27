set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let g:dein#install_github_api_token = readfile("/home/ts/.config/nvim/rc/dein/github_token")
let s:dein_dir = expand('~/.cache/dein')

if !isdirectory(s:dein_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_dir))
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml('~/.config/nvim/rc/dein/toml/dein.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/rc/dein/toml/dein_lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

command! DeinRemove :call map(dein#check_clean(), "delete(v:val, 'rf')") | :call dein#recache_runtimepath()
command! DeinUpdate :call dein#check_update(v:true)
