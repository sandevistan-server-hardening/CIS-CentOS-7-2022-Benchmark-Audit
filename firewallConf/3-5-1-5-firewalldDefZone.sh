echo "Testing for 3.5.1.5 Ensure firewalld default zone is set (Automated)"

firewall-cmd --get-default-zone
output=$(firewall-cmd --get-default-zone)
if [[ $output == *"public"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi