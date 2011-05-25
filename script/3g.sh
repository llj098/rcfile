lsusb | grep Huawei | awk -F ' ' '{print $6}'|awk -F: '{print $1}'
sudo usb_modeswitch -W -c ~/script/usb_modeswitch.conf
killall wvdial
sudo wvdial -C ~/script/wvdial.conf &
