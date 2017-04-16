function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "»"; fi
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%m %{$fg_bold[red]%}%c%  %{$fg_bold[blue]%}$(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
