echo "Testing 2.2.7 Ensure DNS Server is not installed"
rpm -q bind

output=$(rpm -q bind)
if [[ "$output" == *"package bind is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi