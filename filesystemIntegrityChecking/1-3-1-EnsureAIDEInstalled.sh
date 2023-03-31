echo "Testing 1.3.1 Ensure AIDE is Installed"
rpm -q aide
output=$(rpm -q aide)
if [[ "$output" == *"aide-"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi