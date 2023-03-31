echo "Testing 5.5.1.4 Ensure inactive password lock is 30 days or less (Automated)"

useradd -D | grep INACTIVE
grep -E ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1,7