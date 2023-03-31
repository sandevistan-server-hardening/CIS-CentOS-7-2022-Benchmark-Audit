echo "Testing 6.1.13 Audit SUID executables"
df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -4000 > cis_benchmark6.1.13_audit

echo "Audit logs have been saved to the 'cis_benchmark6.1.13_audit' file in the cwd"