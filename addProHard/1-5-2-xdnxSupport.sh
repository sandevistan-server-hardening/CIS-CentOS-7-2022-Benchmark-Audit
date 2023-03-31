echo "Testing 1.5.2 Ensure XD/NX suppport is enabled (Automated)"

journalctl | grep 'protection: active'

[[ -n $(grep noexec[0-9]*=off /proc/cmdline) || -z $(grep -E -i '(pae|nx)' /proc/cpuinfo) || -n $(grep '\sNX\s.*\sprotection:\s' /var/log/dmesg | grep -v active) ]] && echo "NX Protection is not active"

