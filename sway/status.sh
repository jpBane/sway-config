# The Sway configuration file in ~/.config/sway/config calls this script. 
# You shoud see changes to the status bar after saving this script. 
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.


while true
do

# Date
date_formatted=$(date "+%a %F %H:%M")

# Get the Linux Version
linux_version=$(uname -r | cut -d '+' -f1)

# Temperature
cpu_temp=$(~/.config/sway/cpu_temp.sh)

# IP-Adresse
ssid=$(iwgetid -r)
[ -z "$ssid" ] && ssid="No SSID" || ssid="$ssid"

ip_wlan=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
[ -z "$ip_wlan" ] && ip_wlan="No IP" || ip_wlan="$ip_wlan"

ip_lan=$(ip -4 -o addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
[ -z "$ip_lan" ] && ip_lan="Disconnected" || ip_lan="$ip_lan"

# RAM
ram_usage=$(~/.config/sway/ram_usage.sh)

# CMUS Player info
cmus=$(~/.config/sway/cmus-info.sh)

# Icons
    

echo "$cmus || v$linux_version |  $ssid ($ip_wlan) |  $ip_lan |  $cpu_temp | $ram_usage |  $date_formatted"
sleep 5 # absolut ausreichend für Informationen wie Temp, RAM, IP

done
