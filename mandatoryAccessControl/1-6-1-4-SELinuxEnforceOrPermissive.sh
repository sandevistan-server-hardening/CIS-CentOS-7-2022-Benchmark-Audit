echo "Testing 1.6.1.4 Ensure the SELinux mode is enforcing or permissive"
getenforce
output=$(getenforce)
if [[ "$output" == *"Enforcing"* ]]; then
  echo "pass"
elif [[ "$output" == *"Permissive"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

grep -Ei '^\s*SELINUX=(enforcing|permissive)' /etc/selinux/config
output=$(grep -Ei '^\s*SELINUX=(enforcing|permissive)' /etc/selinux/config)
if [[ "$output" == *"SELINUX=enforcing"* ]]; then
  echo "pass"
elif [[ "$output" == *"SELINUX=permissive"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi