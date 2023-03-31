echo "Testing 5.3.2 Ensure permissions on SSH private host key files are configured (Automated)"

find /etc/ssh -xdev -type f -name 'ssh_host_*_key' -exec stat {} \; > cis_benchmark5.3.2_audit

echo "Audit logs have been saved to the 'cis_benchmark5.3.2_audit' file in the cwd"