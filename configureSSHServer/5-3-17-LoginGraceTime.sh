echo "Testing 5.3.17 Ensure SSH LoginGraceTime is set to one minute or less"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep logingracetime
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep logingracetime)

if [[ "$output" == *"logingracetime 60"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*LoginGraceTime\s+(0|6[1-9]|[7-9][0-9]|[1-9][0-9][0-9]+|[^1]m)' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*LoginGraceTime\s+(0|6[1-9]|[7-9][0-9]|[1-9][0-9][0-9]+|[^1]m)' /etc/ssh/sshd_config)
if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi