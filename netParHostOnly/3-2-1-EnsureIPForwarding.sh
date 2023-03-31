echo "Testing 3.2.1 Ensure IP forwarding is disabled"

sysctl net.ipv4.ip_forward
output=$(sysctl net.ipv4.ip_forward)
if [[ $output == *"net.ipv4.ip_forward = 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep -E -s "^\s*net\.ipv4\.ip_forward\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf


sysctl net.ipv6.conf.all.forwarding
output=$(sysctl net.ipv6.conf.all.forwarding)
if [[ $output == *"net.ipv6.conf.all.forwarding = 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep -E -s "^\s*net\.ipv6\.conf\.all\.forwarding\s*=\s*1" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf