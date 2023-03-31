echo "Testing for 4.1.1.2 Ensure auditd service is enabled and running (Automated)"

systemctl is-enabled auditd

output=$(systemctl is-enabled auditd)
if [[ $output == *"enabled"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

systemctl status auditd | grep 'Active: active (running)'