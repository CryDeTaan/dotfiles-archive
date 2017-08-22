export PATH="$HOME/.composer/vendor/bin:/home/crydetaan/.config/composer/vendor/bin:$PATH"
export BROWSER="/usr/bin/chrome"

# Fix SSH auth socket location so agent forwarding works with tmux
if test "$SSH_AUTH_SOCK" ; then
  ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi
