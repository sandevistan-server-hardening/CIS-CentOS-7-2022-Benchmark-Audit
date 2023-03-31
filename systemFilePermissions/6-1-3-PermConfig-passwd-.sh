echo "Testing 6.1.3 Ensure permissions on /etc/passwd- are configured"

output=$(stat /etc/passwd-)
if [[ "$output" == *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"*  ]]; then
  echo "Pass"
else
  echo "Fail"
fi