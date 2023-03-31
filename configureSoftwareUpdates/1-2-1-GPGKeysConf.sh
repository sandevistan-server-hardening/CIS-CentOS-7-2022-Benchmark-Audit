echo "Running test for Configure Software Updates"
echo "Testing 1.2.1 Ensure GPG keys are configured"

rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release} --> %{summary}\n' > cis_benchmark1.2.1_audit

echo "Audit logs have been saved to the 'cis_benchmark1.2.1_audit' file in the cwd"