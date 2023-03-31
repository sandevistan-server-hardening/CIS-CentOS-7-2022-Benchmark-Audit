echo "Testing 1.8.4 Ensure XDCMP is not enabled"

grep -Eis '^\s*Enable\s*=\s*true' /etc/gdm/custom.conf