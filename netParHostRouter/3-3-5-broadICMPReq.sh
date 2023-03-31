echo "Testing 3.3.5 Ensure broadcast ICMP requests are ignored (Automated)"

sysctl net.ipv4.icmp_echo_ignore_broadcasts

grep "net\.ipv4\.icmp_echo_ignore_broadcasts" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf