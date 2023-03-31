echo "Running test for System File Permissions"
echo "Testing 6.1.1 Audit system file permissions"

rpm -Va --nomtime --nosize --nomd5 --nolinkto > cis_benchmark6.1.1_audit | grep -vw c
echo "Audit logs have been saved to the 'cis_benchmark6.1.1_audit' file in the cwd"