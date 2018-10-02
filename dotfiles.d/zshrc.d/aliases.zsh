# Command Aliases
# This will be used as aliases file

# Simple aliases

alias doit='sudo $(fc -ln -1)'
alias .conf="vim ~/.dotfiles/dotfiles"
alias vimtheme="vim ~/.dotfiles/config/vim/colors/colorscheme.vim"
alias vimairtheme="vim ~/.dotfiles/config/vim/colors/airline_theme.vim"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfiles/master/dotfiles)"
alias ss="pngpaste /tmp/pngpaste.png; curl -s -F sunset=86400 -F c=@- -F p=1 https://ptpb.pw/ < /tmp/pngpaste.png | egrep -o 'https:\/\/ptpb.pw\/.*' | pbcopy; rm /tmp/pngpaste.png"
alias weather="curl -s wttr.in/~Stellenbosch | grep -v 'New fea' | grep -v Foll"
mcd () { mkdir -p "$@" && cd "$@"; }
