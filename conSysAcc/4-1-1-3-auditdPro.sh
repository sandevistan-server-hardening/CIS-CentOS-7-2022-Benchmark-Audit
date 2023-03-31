#!/bin/bash

echo "Testing 4.1.1.3 Ensure auditing for processes that start prior to auditd is enabled (Automated)"

# if check passes return PASSED
efidir=$(find /boot/efi/EFI/* -type d -not -name 'BOOT')
gbdir=$(find /boot -maxdepth 1 -type d -name 'grub*')

if [ -f "$efidir"/grub.cfg ]; then
    grep "^\s*linux" "$efidir"/grub.cfg | grep -Evq "audit=1\b" && echo "FAILED" || echo "PASSED"
elif [ -f "$gbdir"/grub.cfg ]; then

    grep "^\s*linux" "$gbdir"/grub.cfg | grep -Evq "audit=1\b" && echo "FAILED" || echo "PASSED"
else
    echo "FAILED"
fi
