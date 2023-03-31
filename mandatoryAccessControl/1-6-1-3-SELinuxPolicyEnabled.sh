echo "Testing 1.6.1.3 Ensure SELinux policy is configured"
grep SELINUXTYPE= /etc/selinux/config
sestatus | grep 'Loaded policy'
output=$(grep SELINUXTYPE= /etc/selinux/config)
if [[ "$output" == *"targeted"* ]]; then
  echo "pass"
elif [[ "$output" == *"mls"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi
output=$(sestatus | grep 'Loaded policy')
if [[ "$output" == *"targeted"* ]]; then
  echo "pass"
elif [[ "$output" == *"mls"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi