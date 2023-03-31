echo "Testing 5.3.18 Ensure SSH warning banner is configured"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep banner
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep banner)

if [[ "$output" == *"banner /etc/issue.net"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi