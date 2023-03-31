echo "Testing 6.1.14 Audit SGID executables"
df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -2000 > cis_benchmark6.1.14_audit

echo "Audit logs have been saved to the 'cis_benchmark6.1.14_audit' file in the cwd"