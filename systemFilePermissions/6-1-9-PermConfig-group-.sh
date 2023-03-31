echo "Testing 6.1.9 Ensure permissions on /etc/group- are configured"

output=$(stat /etc/group-)
if [[ "$output" == *"Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
  echo "Pass"
else
  echo "Fail"
fi