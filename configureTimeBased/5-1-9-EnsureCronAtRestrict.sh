echo "Testing 5.1.9 Ensure at is restricted to authorized users"

stat /etc/at.deny
output=$(stat /etc/at.deny)
if [[ $output == *"stat: cannot stat /etc/at.deny': No such file or directory"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

stat /etc/at.allow
output=$(stat /etc/at.allow)
if [[ $output == *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi