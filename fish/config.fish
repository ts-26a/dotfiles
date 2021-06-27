set fish_greeting

set -gx GOPATH $HOME/.go
set PATH $PATH ~/.cargo/bin ~/bin /home/linuxbrew/.linuxbrew/bin ~/.local/bin ~/.nimble/bin ~/.gem/ruby/2.7.0/bin $GOPATH/bin

set -gx LC_ALL "ja_JP.UTF-8"
set -gx DISPLAY 192.168.11.10:0.0
set -gx EDITOR nvim
set -gx LANG ja_JP.UTF-8

set_onedark

bind \ct 'fzf --ansi --preview "bat  --color=always --style=header,grid --line-range :100 {}"'

abbr 'b' 'prevd'
abbr 'c' 'clear'
abbr 'd' 'date +"%H:%M:%S"'
abbr 'e' 'exit'

abbr 'cv' 'cd ~/.config/nvim'
abbr 'cf' 'cd ~/.config/fish'

alias 'ls' 'exa --icons'
alias 'l' 'exa --icons -a'
alias 'r' 'exec $SHELL -l'
alias 'yt' 'youtube-dl -x'
alias 'sudo' 'sudo -sE'
alias 'cat' 'bat'
alias 'mkdir' 'mkdir -p'

alias 'cdc' 'clear && cd'
alias 'gcc' 'g++'
alias 'git' 'hub'
alias 'truecheck' 'curl -s https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh | sh'
alias 'clip' '/mnt/c/Windows/System32/clip.exe'

alias 'yay' 'yay --ignore fakeroot-tcp --noconfirm'
alias 'pacman' 'pacman --noconfirm'
alias 'vim' 'nvim'

alias 'ghc' 'stack ghc --'
alias 'ghci' 'stack ghci --'
alias 'runghc' 'stack runghc --'

if status is-interactive
    set -l onedark_options '-b'

    if set -q VIM
        # Using from vim/neovim.
        set onedark_options "-256"
    else if string match -iq "eterm*" $TERM
        # Using from emacs.
        function fish_title; true; end
        set onedark_options "-256"
    end

    set_onedark $onedark_options
end
