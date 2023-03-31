echo "Testing 6.1.6 Ensure permissions on /etc/gshadow- are configured"

output=$(stat /etc/gshadow-)
if [[ "$output" == *"Access: (0000/----------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]]; then
  echo "Pass"
else
  echo "Fail"
fi