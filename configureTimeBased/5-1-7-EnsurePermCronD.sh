echo "Testing 5.1.7 Ensure permissions on /etc/cron.d are configured"

stat /etc/cron.d
output=$(stat /etc/cron.d)
if [[ $output == *"Access: (0700/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi