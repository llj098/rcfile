xrdb -load ~/.XDefaults
setxkbmap -option terminate:ctrl_alt_bksp

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
#export XMI_PROGRAM=fcitx

VboxClient-all &
#exec i3
exec musca
