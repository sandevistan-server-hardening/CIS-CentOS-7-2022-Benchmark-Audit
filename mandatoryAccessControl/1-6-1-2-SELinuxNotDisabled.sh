echo "Testing 1.6.1.2 Ensure SELinux is not disabled in bootloader cofig"
# IF check passes return PASSED
efidir=$(sudo find /boot/efi/EFI/* -type d -not -name 'BOOT') gbdir=$(sudo find /boot -maxdepth 1 -type d -name 'grub*')
if [ -f "$efidir"/grub.cfg ]; then
grep "^\s*linux" "$efidir"/grub.cfg | grep -Eq "(selinux=0|enforcing=0)" && echo "FAILED: \"$()\" exists" || echo$
elif [ -f "$gbdir"/grub.cfg ]; then
grep "^\s*linux" "$gbdir"/grub.cfg | grep -Eq "(selinux=0|enforcing=0)" && echo "FAILED: \"$()\" exists" || echo $
else
   echo "FAILED"
fi
