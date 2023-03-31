echo "Testing 5.5.1.3 Ensure password expiration warning days is 7 or more (Automated)"

grep ^\s*PASS_WARN_AGE /etc/login.defs
output=$(grep ^\s*PASS_WARN_AGE /etc/login.defs)
if [[ $output == *"PASS_WARN_AGE 7"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

grep -E ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1,6
output=$(grep -E ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1,6)
if [[ $output == *"<user>:<PASS_WARN_AGE>*" ]]; then
    echo "Pass"
else    
    echo "Fail"
fi