echo "Testing for 3.5.1.4 Ensure firewalld service enabled and running (Automated)"

systemctl is-enabled firewalld
output=$(systemctl is-enabled firewalld)
if [[ $output == *"enabled"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

firewall-cmd --state
output=$(firewall-cmd --state)
if [[ $output == *"running"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

# virt-customize -a /img/$VM_NAME.qcow2  --run-command 'echo PermitRootLogin yes >> /etc/ssh/sshd_config'