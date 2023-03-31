echo "Testing 5.1.3 Ensure permissions on /etc/cron.hourly are configured"

stat /etc/cron.hourly/
output=$(stat /etc/cron.hourly/)
if [[ $output == *"Access: (0755/drwx-----)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi