echo "Testing 6.1.2 Ensure permissions on /etc/passwd are configured"

output=$(stat /etc/passwd)
if [[ "$output" == *"Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"*  ]]; then
  echo "Pass"
else
  echo "Fail"
fi