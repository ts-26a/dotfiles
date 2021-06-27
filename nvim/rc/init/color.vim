set background=dark
colorscheme darkspace

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

hi def link rubyStringDelimiter String
hi def link pythonEscape SpecialChar
hi def link jsonString String
