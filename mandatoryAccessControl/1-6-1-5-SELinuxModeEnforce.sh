echo "Testing 1.6.1.5 Ensure the SELinux mode is enforcing"
grep -i SELINUX=enforcing /etc/selinux/config
output=$(grep -i SELINUX=enforcing /etc/selinux/config)
if [[ "$output" == *"SELINUX=enforcing"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi