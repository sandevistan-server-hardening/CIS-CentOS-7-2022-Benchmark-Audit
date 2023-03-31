echo "Testing 5.2.3 Ensure sudo log file exists"

grep -Ei '^\s*Defaults\s+([^#;]+,\s*)?logfile\s*=\s*(")?[^#;]+(")?' /etc/sudoers /etc/sudoers.d/* > cis_benchmark5.2.3_audit

echo "Audit logs have been saved to the 'cis_benchmark5.2.3_audit' file in the cwd"
output=$(grep -Ei '^\s*Defaults\s+([^#;]+,\s*)?logfile\s*=\s*(")?[^#;]+(")?' /etc/sudoers /etc/sudoers.d/*)

if [[ "$output" == *"logfile="/var/log/sudo.log""* ]]; then
  echo "pass"
else
  echo "FAIL"
fi