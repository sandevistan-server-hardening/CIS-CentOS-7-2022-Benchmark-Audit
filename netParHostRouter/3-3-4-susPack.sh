echo "Testing 3.3.4 Ensure suspicious packets are logged (Automated)"

sysctl net.ipv4.conf.all.log_martians

sysctl net.ipv4.conf.default.log_martians

grep "net\.ipv4\.conf\.all\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf net.ipv4.conf.all.log_martians = 1

grep "net\.ipv4\.conf\.default\.log_martians" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
