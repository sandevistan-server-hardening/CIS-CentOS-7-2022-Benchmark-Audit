echo "Testing 5.3.12 Ensure SSH PermitUserEnvironment is disabled"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep permituserenvironment
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep permituserenvironment)

if [[ "$output" == *"permituserenvironment no"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*PermitUserEnvironment\s+yes' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*PermitUserEnvironment\s+yes' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi