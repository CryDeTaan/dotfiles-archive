# .dotfiles

This is a collection of my dotfiles which I have been using over the years, its gone through some changes as I change the way I work. Its probably far from perfect :)

## Quick Start
Run the following command, this will add an alias called dotfiles.

    alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfiles/master/dotfiles)"


Now that you have the dotfiles alias added the following will be available.

    dotfiles --install all

No need to add the alias everytime to run one of the dotfils, the installation adds a persistent dotfiles command.

## dotfile detail
So basically, my dotfile config includes;

    1. zsh with oh-my-zsh
        - Some Aliases
        - Commands that run at startup
        - Some exports I want everytime the shell starts up
        - Some stuff I want to make happen at startup

    2. vim
        # Since December 2018 I moved back to a single vimrc file as I felt like everytime I have to edit something in my vimrc finding the right file becomes a pain.

        - I have some plugins enabled using vundel
        - Plugins: Maybe to many, check the vimrc
        - Some General config,
        - Custom colour scheme
        - Oh, and I suck at spelling, so there is that (not enabled by default - use ',esc' and ',dsc').

    3. tmux
        - Just a rc with all the configs for tmux.

I will try and add more detail for each in, either; the individual rc, or the dotfiles.d config files.

## Other usage options
```
    Usage: dotfiles [option] [configs]

    Examples:
        dotfiles --install all
        dotfiles --install vim
        dotfiles --remove all
        dotfiles --remove vim
        dotfiles --update all
        dotfiles --check all

    Options:
        -i, --install [configs]     Install configurations (See Valid Configs)
        -r, --remove [configs]      Uninstall configurations (See Valid Configs)
        -u, --update all            Update the configuration repository

    Valid Configs: zsh, vim, tmux
```
