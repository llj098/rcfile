xrdb -load ~/.XDefaults
setxkbmap -option terminate:ctrl_alt_bksp

#export LC_CTYPE="zh_CN.UTF-8"
export XMODIFIERS=@im=fcitx
export XIM=fcitx
#export XMI_PROGRAM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

VboxClient-all &
exec i3
