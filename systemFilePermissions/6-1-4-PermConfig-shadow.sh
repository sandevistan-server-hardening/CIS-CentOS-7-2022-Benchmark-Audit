echo "Testing 6.1.4 Ensure permissions on /etc/shadow are configured"

output=$(stat /etc/shadow)
if [[ "$output" == *"Access: (0000/----------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
  echo "Pass"
else
  echo "Fail"
fi