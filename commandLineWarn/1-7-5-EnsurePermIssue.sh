echo "Testing 1.7.5 Ensure permissions on /etc/issue are configured"

stat /etc/issue
output=$(stat /etc/issue)
if [[ $output == *"Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi