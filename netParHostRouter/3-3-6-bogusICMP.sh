echo "Testing 3.3.6 Ensure bogus ICMP responses are ignored (Automated)"

sysctl net.ipv4.icmp_ignore_bogus_error_responses

grep "net.ipv4.icmp_ignore_bogus_error_responses" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf