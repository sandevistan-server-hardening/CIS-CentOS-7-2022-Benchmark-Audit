echo "Testing for 6.2.2 Ensure /etc/shadow password fields are not empty (Automated)"

awk -F: '($2 == "") { print $1 "does not have a password"}' /etc/shadow
output=$(awk -F: '($2 == "") { print $1 "does not have a password"}' /etc/shadow)
if [[ $output == *""* ]]; then
    echo "Pass"
else
    echo "Fail"
fi
