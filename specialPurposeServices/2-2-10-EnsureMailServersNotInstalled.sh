echo "Testing 2.2.10 Ensure IMAP and POP3 Server is not installed"
rpm -q dovecot

output=$(rpm -q dovecot)
if [[ "$output" == *"package dovecot is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi