echo "Testing 3.2.2 Ensure packet redirect sending is disabled"

sysctl net.ipv4.conf.all.send_redirects
output=$(sysctl net.ipv4.conf.all.send_redirects)
if [[ $output == *"net.ipv4.conf.all.send_redirects = 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

sysctl net.ipv4.conf.default.send_redirects
output=$(sysctl net.ipv4.conf.default.send_redirects)
if [[ $output == *"net.ipv4.conf.default.send_redirects = 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep "net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
output=$(grep "net\.ipv4\.conf\.all\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf)
if [[ $output == *"net.ipv4.conf.all.send_redirects = 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep "net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf
output=$(grep "net\.ipv4\.conf\.default\.send_redirects" /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /run/sysctl.d/*.conf)
if [[ $output == *"net.ipv4.conf.default.send_redirects= 0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi