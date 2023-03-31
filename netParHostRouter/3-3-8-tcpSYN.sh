echo "Testing Ensure TCP SYN Cookies is enabled (Automated)"

sysctl net.ipv4.tcp_syncookies

grep "net\.ipv4\.tcp_syncookies" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf