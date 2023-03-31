echo "Testing 5.3.6 Ensure SSH X11 forwarding is disabled (Automated)"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -i x11forwarding

grep -Ei '^\s*x11forwarding\s+yes' /etc/ssh/sshd_config