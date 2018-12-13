# simple.zsh-theme
#
# Author: CryDeTaan
# Direct Link: https://github.com/CryDeTaan/dotfiles/blob/master/config/oh-my-zsh/custom/themes/simple.zsh-theme
#
# Created on:		April 07, 2018
# Last modified on:	October 16, 2018

eval my_gray='$FG[237]'

# THe two functions (zle-line-init, zle-keymap-select) are used to redraw the prompt depending on the current vi-mode.
function zle-line-init {

# This option will always start the new prompt in normal mode, I am not sure I like that.
# I remapped 'jj' to exit insert mode, same as what I have done with vim, so its fairly easy to get to normal mode. 
#    zle -K vicmd;
    zle-keymap-select
}

function zle-keymap-select {
    INSERT='%{$FG[075]%}%~ $(git_prompt_info)%{$fg[green]%}%(!.#.»)%{$reset_color%} '
    NORMAL='%{$FG[075]%}%~ $(git_prompt_info)%{$fg[red]%}%(!.#.»)%{$reset_color%} '
    PROMPT="${${KEYMAP/vicmd/$NORMAL}/(main|viins)/$INSERT}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$my_gray$(virtualenv_prompt_info) %n@%m%{$reset_color%}%'
else
	RPROMPT='$my_gray%n@%m%{$reset_color%}%'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[078]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}*%{$FG[078]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[078]%})"
