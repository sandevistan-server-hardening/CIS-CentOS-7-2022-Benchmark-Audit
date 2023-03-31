echo "Testing 3.3.7 Ensure Reverse Path Filtering is enabled (Automated)"

sysctl net.ipv4.conf.all.rp_filter

sysctl net.ipv4.conf.default.rp_filter

grep "net\.ipv4\.conf\.all\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf

grep "net\.ipv4\.conf\.default\.rp_filter" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf