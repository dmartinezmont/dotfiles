#!/usr/bin/env zsh

function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
          echo "%{$fg[blue]%}detached-head%{$reset_color%}) $(git_prompt_status) %{$reset_color%} "
        else
          echo "$(git_prompt_info) $(git_prompt_status) %{$reset_color%} "
        fi
    else
      echo "%{$reset_color%} "
    fi
}

PROMPT='%(?,%{$fg[yellow]%},%{$fg[red]%})λ %{$fg[cyan]%}~» %{$reset_color%}'
RPROMPT='%{$fg_bold[black]%}%2~ $(check_git_prompt_info)%{$fg[yellow]%}%T%{$reset_color%}'

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[magenta]%} "
zsh_theme_git_prompt_CLEAN="%{$fg_bold[green]%} "

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%} "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%} "
