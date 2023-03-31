echo "Testing 3.1.1 Disable IPv6 (Manual)"

# grep "^\s*linux*" /boot/grub2/grub.cfg | grep -v ipv6.disable=1

sysctl net.ipv6.conf.all.disable_ipv6
sysctl net.ipv6.conf.default.disable_ipv6
grep -E '^\s*net\.ipv6\.conf\.(all|default)\.disable_ipv6\s*=\s*1\b(\s+#.*)?$' /etc/sysctl.conf /etc/sysctl.d/*.conf | cut -d: -f2

