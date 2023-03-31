echo "Testing 2.2.7 Ensure FTP Server is not installed"
rpm -q vsftpd

output=$(rpm -q vsftpd)
if [[ "$output" == *"package vsftpd is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi