#█▓▒░ Aliases
alias ls="ls -hF --color=auto"
alias ll="ls -lahF --color=auto"
alias mkdir="mkdir -p"
alias cp="cp -r"

alias nano="micro"
alias mixer="alsamixer"
alias btop="bpytop"

alias pacman="sudo pacman"
alias update="yay -Syyu --noconfirm"

alias gfx="lspci | grep -E 'VGA|3D' "
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias tempwatch="while :; do sensors; sleep 2 && clear; done;"
