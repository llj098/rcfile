nmcli con list | grep liulijin | awk '{print $2}' | xargs nmcli con up uuid   

