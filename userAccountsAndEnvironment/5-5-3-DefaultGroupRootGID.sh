echo "Testing 5.5.3 Ensure default group for the root account is GID 0 (Automated)"

grep "^root:" /etc/passwd | cut -f4 -d:
output=$(grep "^root:" /etc/passwd | cut -f4 -d:)
if [[ $output == *"0"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi
