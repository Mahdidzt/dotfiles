# ping online
alias po='ping 8.8.8.8'

# system
alias op='open'
alias tch='touch'
alias md='mkdir'
alias sndOut='pacmd set-default-sink 1'
alias bat='batcat'

# sudo
alias sd='sudo'
alias sdi='sudo apt update && sd apt install'

# npm
alias ni='npm i'

# git
alias add='git add .'
alias push='git push'
alias pull='git pull'
alias co='git checkout'
alias br='git branch'

# system
alias shut='systemctl poweroff'
alias reboot='systemctl reboot'
alias hibernate='sudo systemctl hibernate'

# zsh
alias zap='exec zsh'
alias zconf="vim ~/.zshrc"

# i3
alias vi3='vim ~/.config/i3/config'

# vim
alias vrc='vim ~/.vimrc'

# galaxy buds
alias bud='sudo /home/mahdi/dev/scripts/buds.sh && sleep 1 && buds'
alias buds='~/buds-setting/buds-setting.bin > /dev/null 2>&1 &'
# bluetooth
alias blstart='rfkill unblock bluetooth'
alias blstop='rfkill block bluetooth'

# vpn 
alias vsa='systemctl start vpn.service'
alias vss='systemctl status vpn.service'
alias vst='systemctl stop vpn.service'
alias vrest='vst && sleep 3 && vsa'
alias vconf='sudo vim /etc/systemd/system/vpn.service'
alias vsre='sudo systemctl daemon-reload'

# bash aliases 
alias ba='vim ~/.bash_aliases'


# chrome
alias chr='google-chrome'

# vscode
alias vs='code .'

# tmux 
alias ex='exit'
alias tx='tmux'

# wifi
alias wion='nmcli radio wifi on'
alias wioff='nmcli radio wifi off'
alias wienable='nmcli radio wifi'
alias wilist='nmcli dev wifi list'
alias wis='nmcli dev status'
alias wiphone='nmcli d wifi connect B2:3A:83:97:B3:B8'
alias wihome='nmcli d wifi connect 28:EE:52:D1:59:95'

# fzf
alias fbat="fzf --preview 'batcat --style=numbers --color=always --line-range :500 {}'"
alias vifz="vim ${fzf}"

# game
alias game='vst && sleep 1 && wilist && sleep 1 && wiphone && bud'
