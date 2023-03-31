echo "Testing 6.2.9 Ensure root is the only UID 0 account (Automated)"

awk -F: '($3 == 0) { print $1 }' /etc/passwd

output=$(awk -F: '($3 == 0) { print $1 }' /etc/passwd)
if [[ $output == *"root"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi
