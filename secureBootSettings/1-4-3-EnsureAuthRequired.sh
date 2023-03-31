echo "Testing 1.4.3 Ensure authentication required for single user mode"

grep /sbin/sulogin /usr/lib/systemd/system/rescue.service

grep /sbin/sulogin /usr/lib/systemd/system/emergency.service