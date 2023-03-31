echo "Running test for User Accounts and Environment"
echo "Testing 5.5.1.1 Ensure password expiration is 365 days or less (Automated)"

grep ^\s*PASS_MAX_DAYS /etc/login.defs
output=$(grep ^\s*PASS_MAX_DAYS /etc/login.defs)
if [[ $output == *"PASS_MAX_DAYS 365"* ]]; then
  echo "Pass"
else
  echo "Fail"
fi
  # Still shows 'Fail' for output after remediation change

echo "Verifying all users' PASS_MAX_DAYS conforms to site policy"
grep -E '^[^:]+:[^!*]' /etc/shadow | cut -d: -f1,5
output=$(grep -E '^[^:]+:[^!*]' /etc/shadow | cut -d: -f1,5)
if [[ $output == *"<user>:<PASS_MAX_DAYS>"* ]]; then
  echo "Pass"
else
  echo "Fail"
fi
  # grep: /etc/shadow: Permission denied