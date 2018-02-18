export PATH="$HOME/.composer/vendor/bin:/home/crydetaan/.config/composer/vendor/bin:$PATH"


# Brew installs a python2 executable to /usr/local/bin.
# To have brew's python executable in PATH we need the following.
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# The following is required for the python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
