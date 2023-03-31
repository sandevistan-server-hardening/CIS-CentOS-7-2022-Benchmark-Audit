echo "Testing 5.3.10 Ensure SSH root login s disabled (Automated)"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep permitrootlogin

grep -Ei '^\s*PermitRootLogin\s+yes' /etc/ssh/sshd_config