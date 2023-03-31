echo "Testing 2.2.17 Ensure nfs-utils is not installed or the nfs-server service is masked"
rpm -q nfs-utils

output=$(rpm -q nfs-utils)
if [[ "$output" == *"package nfs-utils is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "If the nfs-package is required as a dependency, verify the nfs-server service is 'masked'"
systemctl is-enabled nfs-server

output=$(systemctl is-enabled nfs-server)
if [[ "$output" == *"masked"* ]] || [[ "$output" == *"disabled"* ]] ; then
  echo "pass"
else
  echo "FAIL"
fi