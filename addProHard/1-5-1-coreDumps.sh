echo "Testing 1.5.1 Ensure core dumps are restricted (Automated)"

grep -E "^\s*\*\s+hard\s+core" /etc/security/limits.conf /etc/security/limites.d/*

sysctl fs.suid_dumpable

grep "fs\.suit_dumpable" /etc/sysctl.conf /etc/sysctl.d/*

systemctl is-enabled coredump.service

