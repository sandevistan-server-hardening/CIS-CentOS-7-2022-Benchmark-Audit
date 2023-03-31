echo "Testing 1.6.1.8 Ensure the MCS Translation Service (mcstrans) is not installed"
rpm -q mcstrans
output=$(rpm -q mcstrans)
if [[ "$output" == *"package mcstrans is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi