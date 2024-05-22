time_stamp() {
  local TIMESTAMP=$(date "+%d/%m/%y %H:%M:%S")
  echo $TIMESTAMP
}

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PROMPT_DIRTRIM=3
export PS1='\[\e[38;5;34m\]\u\[\e[38;5;220m\]@\[\e[38;5;32m\]\h\[\e[0m\] \[\e[38;5;251;4m\]\w\[\e[0m\] [$(time_stamp)]\n$(parse_git_branch)\[\e[38;5;129;1m\]\$\[\e[0m\] '
