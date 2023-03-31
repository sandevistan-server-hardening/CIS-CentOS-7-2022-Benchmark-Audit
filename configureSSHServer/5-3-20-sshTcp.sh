echo "Testing 5.3.20 Ensure SSH AllowTcpForwarding is disabled"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -i allowtcpforwarding

grep -Ei '^\s*AllowTcpForwarding\s+yes' /etc/ssh/sshd_config
