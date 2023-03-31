echo "Testing 2.2.1.3 Ensure ntp is configured"
systemctl is-enabled ntpd

output=$(systemctl is-enabled ntpd)
if [[ "$output" == *"enabled"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep "^restrict" /etc/ntp.conf

output=$(grep "^restrict" /etc/ntp.conf)
if [[ "$output" == *"restrict -4 default kod nomodify notrap nopeer noquery"* ]] || [[ "$output" == *"restrict -6 default kod nomodify notrap nopeer noquery"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi