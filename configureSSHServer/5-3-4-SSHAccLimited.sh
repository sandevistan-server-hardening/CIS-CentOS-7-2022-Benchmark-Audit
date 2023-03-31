echo "Testing 5.3.4 Ensure SSH access is limited (Automated)"
sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Pi$

output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" |$

if [[ -z "$output" ]]; then
  echo "FAIL"
else
  echo "pass"
fi

grep -Pi '^\h*(allow|deny)(users|groups)\h+\H+(\h+.*)?$' /etc/ssh/sshd_config

output=$(grep -Pi '^\h*(allow|deny)(users|groups)\h+\H+(\h+.*)?$' /etc/ssh/sshd_config)
if [[ -z "$output" ]]; then
  echo "FAIL"
else
  echo "pass"
fi