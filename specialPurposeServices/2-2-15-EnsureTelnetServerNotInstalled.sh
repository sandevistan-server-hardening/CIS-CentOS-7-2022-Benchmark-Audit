echo "Testing 2.2.15 Ensure Telnet-Server is not installed"
rpm -q telnet-server

output=$(rpm -q telnet-server)
if [[ "$output" == *"package telnet-server is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi