echo "Testing 5.1.1 Ensure cron daemon is enabled and running"

systemctl is-enabled crond
output=$(systemctl is-enabled crond)
if [[ $output == *"enabled"* ]]; then
    echo "Pass"
else    
    echo "Fail"
fi

systemctl status crond | grep 'Active: active (running)'