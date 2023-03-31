echo "Testing 2.2.18 Ensure rpcbind is not installed or the rpcbind services are masked"
rpm -q rpcbind

output=$(rpm -q rpcbind)
if [[ "$output" == *"package rpcbind is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "If the rpcbind package is required as a dependency, verify the rpcbind and rpcbind.socket services are 'masked'"
systemctl is-enabled rpcbind

output=$(systemctl is-enabled rpcbind)
if [[ "$output" == *"masked"* ]] || [[ "$output" == *"disabled"* ]] ; then
  echo "pass"
else
  echo "FAIL"
fi

systemctl is-enabled rpcbind.socket
output=$(systemctl is-enabled rpcbind.socket)
if [[ "$output" == *"masked"* ]] || [[ "$output" == *"disabled"* ]] ; then
  echo "pass"
else
  echo "FAIL"
fi