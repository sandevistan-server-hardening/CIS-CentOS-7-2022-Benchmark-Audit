echo "Testing for 3.5.1.6 Ensure network interfaces are asigned to appropraite zone (Manual)"

find /sys/class/net/* -maxdepth 1 | awk -F"/" '{print $NF}' | while read -r netint; do [ "$netint" != "lo" ] && firewall-cmd --get-active-zones | grep -B1 $netint; done