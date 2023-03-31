echo "Testing 5.1.5 Ensure permissions on /etc/cron.weekly are configured"

stat /etc/cron.weekly
output=$(stat /etc/cron.weekly)
if [[ $output == *"Access: (0700/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi