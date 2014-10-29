#fox theme
PROMPT='%{$fg[black]%}┌[%{$fg_bold[white]%}%{$fg_bold[white]%}%M%{$reset_color%}%{$fg[black]%}]%{$fg[white]%}-%{$fg[black]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[black]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[black]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
