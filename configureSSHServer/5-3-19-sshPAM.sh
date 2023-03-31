echo "Testing 5.3.19 Ensure SSH PAM is enabled"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -i usepam

grep -Ei '^\s*UsePAM\s+no' /etc/ssh/sshd_config