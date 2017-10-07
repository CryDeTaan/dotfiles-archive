# .dotfiles

For some time I have been using this dotfile config, but I have never set aside some time to populate the readme.

This was very much inspired by @leonjza's [dotfiles](https://github.com/leonjza/dotfiles "dotfiles of @leonjza")
He has obviously done a much better job at it, but I wanted to create my own, one, so that I can learn what it is all about, and two, I had some other requirements. 

## Quick Start
Run the following command, this will add an alias called dotfiles. 
    `alias dotfiles="bash <(curl -fsSL https://raw.githubusercontent.com/crydetaan/dotfiles/master/dotfiles)"`


Now that you have the dotfiles alias added the following will be available. 

    `dotfiles --install all`

I am going to assume that when you have added the alias it means that you will probably want to install the dotfiles.
I can easily make this assumption, because if you have run the install before, an alias would have been added already as part of the rc file that gets loaded as you start a shell ;p. 

## dotfile detail
So basically, my dotfile config includes;
    1. zsh with oh-my-zsh
        - Some Aliases
        - Commands that run at startup
        - Some exports I want everytime the shell starts up 
        - Some stuff I want to make happen at startup

    2. vim
        - I have some plugins enabled using vundel
        - Plugins: Airline, Nerdtree, Syntastic, ctrlp
        - Some General config, 
        - Using the Jay Colour Scheme
        - Oh, and I suck at spelling, so there is that. 

    3. tmux
        - Just a rc with all the configs for tmux.

I will try and add all the details for each in, either; the individual rc, or the dotfiles.d config files.

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
