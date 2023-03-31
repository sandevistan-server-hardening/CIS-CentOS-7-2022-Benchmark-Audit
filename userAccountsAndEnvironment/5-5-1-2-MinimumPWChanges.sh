echo "Testing 5.5.1.2 Ensure minimum days between password changes is configured (Automated)"

grep ^\s*PASS_MIN_DAYS /etc/login.defs
output=$(grep ^\s*PASS_MIN_DAYS /etc/login.defs)
if [[ $output == *"PASS_MIN_DAYS 1"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep -E ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1,4
output=$(grep -E ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1,4)
if [[ $output == *"PASS_MIN_DAYS"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi
