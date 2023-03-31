echo "Testing 1.7.4 Ensure permissions on /etc/motd are configured"

stat /etc/motd
output=$(stat /etc/motd)
if [[ $output == *"Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi