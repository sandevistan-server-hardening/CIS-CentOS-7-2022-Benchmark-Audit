echo "Testing 2.2.19 Ensure rsync is not installed or the rsync service is masked"
rpm -q rsync

output=$(rpm -q rsync)
if [[ "$output" == *"package rsync is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "If the rpcbind package is required as a dependency, verify the rsyncd service is 'masked'"
systemctl is-enabled rsyncd

output=$(systemctl is-enabled rsyncd)
if [[ "$output" == *"masked"* ]] || [[ "$output" == *"disabled"* ]] ; then
  echo "pass"
else
  echo "FAIL"
fi