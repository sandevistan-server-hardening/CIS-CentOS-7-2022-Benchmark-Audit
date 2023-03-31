echo "Testing 2.2.1.2 Ensure chrony is configured"
grep -E "^(server|pool)" /etc/chrony.conf > cis_benchmark2.2.1.2_audit

echo "Multiple servers may be configured - verifying options"
grep ^OPTIONS /etc/sysconfig/chronyd > cis_benchmark2.2.1.2_audit

echo "Audit logs have been saved to the 'cis_benchmark2.2.1.2_audit' file in the cwd"