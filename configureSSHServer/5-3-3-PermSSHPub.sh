echo "5.3.3 Ensure permissions on SSH public host key files are configured (Automated)"

find /etc/ssh -xdev -type f -name 'ssh_host_*_key.pub' -exec stat {} \; > cis_benchmark5.3.3_audit

echo "Audit logs have been saved to the 'cis_benchmark5.3.3_audit' file in the cwd"