echo "Testing 5.3.11 Ensure SSH PermitEmptyPasswords is disabled (Automated)"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep permitemptypasswords

grep -Ei '^\s*PermitEmptyPasswords\s+yes' /etc/ssh/sshd_config