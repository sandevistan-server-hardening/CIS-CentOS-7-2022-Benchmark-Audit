echo "Testing 1.7.2 Ensure local login warning banner is configured properly"

cat /etc/issue

grep -E -i "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/issue