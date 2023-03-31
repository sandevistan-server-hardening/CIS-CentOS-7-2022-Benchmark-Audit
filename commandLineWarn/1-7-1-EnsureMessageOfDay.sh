echo "Testing 1.7.1 Ensure message of the day is configured properly"

cat /etc/motd

grep -E -i "(\\\v|\\\r|\\\m|\\\s|$(grep '^ID=' /etc/os-release | cut -d= -f2 | sed -e 's/"//g'))" /etc/motd