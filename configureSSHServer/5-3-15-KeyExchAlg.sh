echo "Testing 5.3.15 Ensure only strong Key Exchange algorithms are used"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*kexalgorithms\s+([^#]+,)?(diffie-hellman-group1-sha1|diffie-hellman- group14-sha1|diffie-hellman-group-exchange-sha1)\b'
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*kexalgorithms\s+([^#]+,)?(diffie-hellman-group1-sha1|diffie-hellman- group14-sha1|diffie-hellman-group-exchange-sha1)\b')

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*kexalgorithms\s+([^#]+,)?(diffie-hellman-group1-sha1|diffie- hellman-group14-sha1|diffie-hellman-group-exchange-sha1)\b' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*kexalgorithms\s+([^#]+,)?(diffie-hellman-group1-sha1|diffie- hellman-group14-sha1|diffie-hellman-group-exchange-sha1)\b' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi