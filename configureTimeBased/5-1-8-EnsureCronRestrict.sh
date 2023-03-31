echo "Testing 5.1.8 Ensure cron is restricted to authorized users"

stat /etc/cron.deny
output=$(stat /etc/cron.deny)
if [[ $output == *"stat: cannot stat /etc/cron.deny': No such file or directory"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

stat /etc/cron.allow
output=$(stat /etc/cron.allow)
if [[ $output == *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi