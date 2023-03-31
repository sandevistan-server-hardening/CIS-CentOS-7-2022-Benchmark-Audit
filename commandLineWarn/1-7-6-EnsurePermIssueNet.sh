echo "Testing 1.7.6 Ensure permissions on /etc/issue.net are configured"

stat /etc/issue.net
output=$(stat /etc/issue.net)
if [[ $output == *"Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi