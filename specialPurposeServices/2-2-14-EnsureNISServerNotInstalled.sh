echo "Testing 2.2.14 Ensure NIS Server is not installed"
rpm -q ypserv

output=$(rpm -q ypserv)
if [[ "$output" == *"package ypserv is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi