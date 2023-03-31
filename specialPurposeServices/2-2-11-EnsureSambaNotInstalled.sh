echo "Testing 2.2.11 Ensure Samba is not installed"
rpm -q samba

output=$(rpm -q samba)
if [[ "$output" == *"package samba is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi