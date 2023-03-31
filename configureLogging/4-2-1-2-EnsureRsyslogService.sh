echo "Testing 4.2.1.2 Ensure rsyslog Service is enabled and running"

systemctl is-enabled rsyslog
output=$(systemctl is-enabled rsyslog)
if [[ $output == *"enabled"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

systemctl status rsyslog | grep 'active (running)'