echo "Testing 5.1.2 Ensure permissions on /etc/crontab are configured"

stat /etc/crontab
output=$(stat /etc/crontab)
if [[ $output == *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)" ]]; then
    echo "Pass"
else
    echo "Fail"
fi