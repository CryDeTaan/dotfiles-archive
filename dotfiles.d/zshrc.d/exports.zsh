# Main file for setting some exports and sourcing some other files. 

# Adding Composer to $PATH if running on system
which composer > /dev/null 2>&1 && export PATH="$HOME/.composer/vendor/bin:$PATH"

# Some OS specific sourcing.
# My OS of choice is MacOS or CentOS(most distros probably),

# The following is required for the python virtualenvwrapper depending on the OS.
case "$OSTYPE" in
    # MacOS
    darwin*)
        # The correct virtualwrapper.sh depending on the OS
        which virtualenv > /dev/null 2>&1 && source /usr/local/bin/virtualenvwrapper.sh && export WORKON_HOME=$HOME/.virtualenvs && export PROJECT_HOME=$HOME/Devel

        # Brew installs a python2 executable to /usr/local/bin.
        # To have brew's python executable in PATH we need the following.
        export PATH="/usr/local/opt/python/libexec/bin:$PATH"
        ;;

    # CentOS
    linux*) 
        which virtualenv > /dev/null 2>&1 && source /usr/bin/virtualenvwrapper.sh && export WORKON_HOME=$HOME/.virtualenvs && export PROJECT_HOME=$HOME/Devel
        ;;
esac
