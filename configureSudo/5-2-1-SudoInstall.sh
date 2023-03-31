echo "Running test for Configure sudo"
echo "Testing 5.2.1 Ensure sudo is installed"

rpm -q sudo
output=$(rpm -q sudo)

if [[ "$output" == *"sudo-"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi