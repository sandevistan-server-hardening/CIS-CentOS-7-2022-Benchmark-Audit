echo "Testing 1.2.2 Ensure package manager repositories are configured"

yum repolist > cis_benchmark1.2.2_audit

echo "Audit logs have been saved to the 'cis_benchmark1.2.2_audit' file in the cwd"