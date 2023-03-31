echo "Testing for 3.5.1.2 Ensure iptables-services not isntalled with firewalld (Automated)"

rpm -q iptables-services
output=$(rpm -q iptables-services)
if [[ $output == *"package iptables-services is not installed"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi


