echo "Testing 2.2.5 Ensure DHCP Server is not installed"
rpm -q dhcp

output=$(rpm -q dhcp)
if [[ "$output" == *"package dhcp is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi