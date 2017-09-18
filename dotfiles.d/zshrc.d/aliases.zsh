# Command Aliases
# This will be used as aliases file

# Simple aliases

alias doit='sudo $(fc -ln -1)'
alias zshconf="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias x=startx
alias i3conf="vim ~/.config/i3/config"
alias i3blocks="vim ~/.config/i3blocks.conf"
alias roficonf="vim ~/.config/rofi/config"
alias termconf="vim .Xresources"

alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfiles/master/dotfiles)"

alias ss="pngpaste /tmp/pngpaste.png; curl -s -F sunset=86400 -F c=@- -F p=1 https://ptpb.pw/ < /tmp/pngpaste.png | egrep -o 'https:\/\/ptpb.pw\/.*' | pbcopy; rm /tmp/pngpaste.png"
