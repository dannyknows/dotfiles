# current directory, two levels deep
directory() {
   echo "%3/"
}

# current time with milliseconds
current_time() {
   echo "%*"
}

# returns ✘ if there are errors, otherwise ✔
return_status() {
   echo "%(?.%{$fg[green]%}✔%f.%{$fg[red]%}✘%f)"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[220]git: $FG[208]"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[124] ❯ changes"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="$FG[082] ❯ commit"

# putting it all together
PROMPT='$(directory)/ $(git_prompt_info)$(git_prompt_status)
$reset_color> '
RPROMPT='$(return_status) $(current_time)'
