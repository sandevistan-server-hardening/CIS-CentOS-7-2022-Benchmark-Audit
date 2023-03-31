echo "Testing 5.3.8 Ensure SSH SSH IgnoreRhosts is enabled (Automated)"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep ignorerhosts

grep -Ei '^\s*ignorerhosts\s+no\b' /etc/ssh/sshd_config