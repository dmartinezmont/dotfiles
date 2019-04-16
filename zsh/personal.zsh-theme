#!/usr/bin/env zsh

function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
      echo "$(git_prompt_info) $(git_prompt_status) %{$reset_color%} "
    else
      echo "%{$reset_color%} "
    fi
}

PROMPT='%(?,%{$fg[yellow]%},%{$fg[red]%})%# %{$reset_color%}'
RPROMPT='%{$fg_bold[black]%}%2~ $(check_git_prompt_info)%{$reset_color%}'

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}@ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
zsh_theme_git_prompt_CLEAN="%{$fg[green]%} ✓"
