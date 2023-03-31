echo "Testing 3.3.3 Ensure secure ICMP redirects are not accepted (Automated)"

sysctl net.ipv4.conf.all.secure_redirects

sysctl net.ipv4.conf.default.secure_redirects

grep "net\.ipv4\.conf\.all\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf

grep "net\.ipv4\.conf\.default\.secure_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf

