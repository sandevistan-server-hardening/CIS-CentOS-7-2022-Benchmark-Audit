echo "Testing 1.7.3 Ensure remote login warning banner is configured properly"

cat /etc/issue.net

grep -E -i "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/issue.net