echo "Testing 6.2.1 Ensure accounts in /etc/passwd use shadowed passwords (Automated)"

awk -F: '($2 != "x") { print $1 " is not set to shadowed passwords "}' /etc/passwd
output=$(awk -F: '($2 != "x") { print $1 " is not set to shadowed passwords "}' /etc/passwd)
if [[ $output == *""* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

