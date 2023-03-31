echo "Testing 5.1.4 Ensure permissions on /etc/cron.daily are configured"

stat /etc/cron.daily/
output=$(stat /etc/cron.daily/)
if [[ $output == *"Access: (0700/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi