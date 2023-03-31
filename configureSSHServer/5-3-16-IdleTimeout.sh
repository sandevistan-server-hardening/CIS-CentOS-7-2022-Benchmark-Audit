echo "Testing 5.3.16 Ensure SSH Idle Timeout Interval is configured"
echo "verifying ClientAliveInterval is between 1 and 900"
echo "If this process does not timeout automatically, press '^c' twice to terminate manually"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname)
/etc/hosts | awk '{print $1}')" | grep clientaliveinterval

output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname)
/etc/hosts | awk '{print $1}')" | grep clientaliveinterval)

if [[ "$output" == *"clientaliveinterval 0"* ]]; then
  echo "FAIL"
fi

echo "verifying ClientAliveCountMax is 0"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep clientalivecountmax
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep clientalivecountmax)

if [[ "$output" == *"clientalivecountmax 0"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*ClientAliveInterval\s+(0|9[0-9][1-9]|[1-9][0-9][0-9][0- 9]+|1[6-9]m|[2-9][0-9]m|[1-9][0-9][0-9]+m)\b' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*ClientAliveInterval\s+(0|9[0-9][1-9]|[1-9][0-9][0-9][0- 9]+|1[6-9]m|[2-9][0-9]m|[1-9][0-9][0-9]+m)\b' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi

grep -Ei '^\s*ClientAliveCountMax\s+([1-9]|[1-9][0-9]+)\b' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*ClientAliveCountMax\s+([1-9]|[1-9][0-9]+)\b' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi