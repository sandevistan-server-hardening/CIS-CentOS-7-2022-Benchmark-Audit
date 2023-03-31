echo "Testing for 3.5.1.3 Ensure nftables either not installed or masked with firewalld (Automated)"

rpm -q nftables
output=$(rpm -q nftables)
if [[ $output == *"package nftables is not installed"* ]]; then
    echo "Pass"
else    
    echo "Fail"
fi

# systemctl status nftables | grep "Active: " | grep -E "active \(running|existed)\)"

systemctl is-enabled nftables
output=$(systemctl is-enabled nftables)
if [[ $output == *"masked"* ]]; then
     echo "Pass"
 else
     echo "Fail"
 fi
    #
