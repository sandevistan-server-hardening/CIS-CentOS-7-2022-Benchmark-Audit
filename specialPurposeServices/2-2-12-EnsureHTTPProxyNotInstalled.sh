echo "Testing 2.2.12 Ensure Samba is not installed"
rpm -q squid

output=$(rpm -q squid)
if [[ "$output" == *"package squid is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi