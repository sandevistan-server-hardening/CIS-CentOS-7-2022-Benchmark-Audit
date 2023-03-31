echo "Running test for Configure SSH Server"
echo "Testing 5.3.1 Ensure permissions on /etc/ssh/sshd_config are configured (Automated)"

stat /etc/ssh/sshd_config
output=$(stat /etc/ssh/sshd_config)
if [[ "$output" == *"Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"* ]];
then
  echo "pass"
else
  echo "FAIL"
fi