echo "Testing 5.1.6 Ensure permissions on /etc/cron.monthly are configured"

stat /etc/cron.monthly/
output=$(stat /etc/cron.monthly/)
if [[ $output == *"Access: (070/drwx------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi