# simple.zsh-theme
#
# Author: CryDeTaan
# Direct Link: https://github.com/CryDeTaan/dotfiles/blob/master/config/oh-my-zsh/custom/themes/simple.zsh-theme
#
# Created on:		April 07, 2018
# Last modified on:	April 07, 2018

local ret_status="%{$fg[green]%}%(!.#.»)%{$reset_color%}"

PROMPT='%{$FG[075]%}%~ \
$(git_prompt_info)\
${ret_status} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[078]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}*%{$FG[078]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[078]%})"
