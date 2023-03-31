echo "Testing 5.3.9 Ensure HostbasedAuthentication is disabled (Automated)"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep hostbasedauthentication

grep -Ei '^\s*HostbasedAuthentication\s+yes' /etc/ssh/sshd_config