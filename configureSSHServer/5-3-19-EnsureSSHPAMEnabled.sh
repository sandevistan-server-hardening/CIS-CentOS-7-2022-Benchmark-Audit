echo "Testing 5.3.19 Ensure SSH PAM is enabled"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -i usepam
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -i usepam)

if [[ "$output" == *"usepam yes"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*UsePAM\s+no' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*UsePAM\s+no' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi