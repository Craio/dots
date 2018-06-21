#                 ██
#                ░██
#  ██████  ██████░██
# ░░░░██  ██░░░░ ░██████
#    ██  ░░█████ ░██░░░██
#   ██    ░░░░░██░██  ░██
#  ██████ ██████ ░██  ░██
# ░░░░░░ ░░░░░░  ░░   ░░
#
#█▓▒░ aliases
alias ls="ls -hF --color=auto"
alias ll="ls -lahF --color=auto"
alias lsl="ls -lhF --color=auto"
alias rmrf="rm -rf"
alias mkdir="mkdir -p"
alias cp="cp -r"
alias mixer="alsamixer"
alias tempwatch="while :; do sensors; sleep 1 && clear; done;"
alias pacman="sudo pacman"
alias update="yaourt -Syua --noconfirm"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias gaming="sudo cpupower frequency-set -g performance"
alias gamingoff="sudo cpupower frequency-set -g powersave"
alias plex="systemctl start plexmediaserver.service"
alias plexstop="systemctl stop plexmediaserver.service"
alias scan="sudo iw dev wlp3s0 scan"
