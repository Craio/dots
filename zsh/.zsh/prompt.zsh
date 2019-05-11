#█▓▒░ Pywal

ICO_DIRTY="*"
ICO_AHEAD="↱"
ICO_BEHIND="↰"
ICO_DIVERGED="⥮"
COLOR_ROOT="%F{red}"
COLOR_USER="%F{green}"
COLOR_NORMAL="%F{white}"
PROMPT_STYLE="classic"

#█▓▒░ Allow functions in the prompt
setopt PROMPT_SUBST
autoload -Uz colors && colors

#█▓▒░ Colors for permissions
if [[ "$EUID" -ne "0" ]]
then  # if user is not root
	USER_LEVEL="${COLOR_USER}"
else # root!
	USER_LEVEL="${COLOR_ROOT}"
fi

#█▓▒░ Git prompt
GIT_PROMPT() {
  test=$(git rev-parse --is-inside-work-tree 2> /dev/null)
  if [ ! "$test" ]
  then
    return
  fi
  ref=$(git name-rev --name-only HEAD | sed 's!remotes/!!' 2> /dev/null)
  dirty="" && [[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && dirty=$ICO_DIRTY
  stat=$(git status | sed -n 2p)
  case "$stat" in
    *ahead*)
      stat=$ICO_AHEAD
    ;;
    *behind*)
      stat=$ICO_BEHIND
    ;;
    *diverged*)
      stat=$ICO_DIVERGED
    ;;
    *)
      stat=""
    ;;
  esac
  case "$PROMPT_STYLE" in
    *)
    echo "${USER_LEVEL}─[${COLOR_NORMAL}"${ref}${dirty}${stat}"${USER_LEVEL}]"
    ;;
  esac
}
case "$PROMPT_STYLE" in
#█▓▒░ Classic
*)
PROMPT='${USER_LEVEL}[${COLOR_NORMAL}%~${USER_LEVEL}]$(GIT_PROMPT)── ─ %f'
;;
esac
