echo "Testing 2.2.13 Ensure Net-SNMP is not installed"
rpm -q net-snmp

output=$(rpm -q net-snmp)
if [[ "$output" == *"package net-snmp is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi