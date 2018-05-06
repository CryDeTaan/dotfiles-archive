# Main file for setting some exports and sourcing some other files. 

# Adding Composer to $PATH if running on system
which composer 2>/dev/null && export PATH="$HOME/.composer/vendor/bin:$PATH"

# Some OS specific sourcing.
# My OS of choice is MacOS or CentOS(most distros probably),

case "$OSTYPE" in
    # MacOS
    darwin*)
        # The correct virtualwrapper.sh depending on the OS
        source /usr/local/bin/virtualenvwrapper.sh

        # Brew installs a python2 executable to /usr/local/bin.
        # To have brew's python executable in PATH we need the following.
        export PATH="/usr/local/opt/python/libexec/bin:$PATH"
        ;;

    # CentOS
    linux*) 
        source /usr/bin/virtualenvwrapper.sh
        ;;
esac

# The following is required for the python virtualenvwrapper
which virtualenv 2>/dev/null && export WORKON_HOME=$HOME/.virtualenvs && export PROJECT_HOME=$HOME/Devel
