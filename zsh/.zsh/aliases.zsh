#█▓▒░ Aliases
alias ls="ls -hF --color=auto"
alias ll="ls -lahF --color=auto"
alias lsl="ls -lhF --color=auto"
alias rmrf="rm -rf"
alias mkdir="mkdir -p"
alias cp="cp -r"

alias mixer="alsamixer"

alias pacman="sudo pacman"

alias update="yay -Syu --noconfirm"
alias ysy="yay"

alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias gaming="sudo cpupower frequency-set -g performance"
alias gamingoff="sudo cpupower frequency-set -g powersave"
alias tempwatch="while :; do sensors; sleep 1 && clear; done;"