echo "Running test for Mandatory Access Control"
echo "Testing 1.6.1.1 ensuring SELinux is installed"
rpm -q libselinux
output=$(rpm -q libselinux)
if [[ "$output" == *"libselinux-"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi