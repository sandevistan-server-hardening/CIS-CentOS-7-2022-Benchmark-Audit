echo "Testing 5.2.2 Ensure sudo commands use pty"

grep -Ei '^\s*Defaults\s+([^#]\S+,\s*)?use_pty\b' /etc/sudoers /etc/sudoers.d/* > cis_benchmark5.2.2_audit

echo "Audit logs have been saved to the 'cis_benchmark5.2.2_audit' file in the cwd"
output=$(grep -Ei '^\s*Defaults\s+([^#]\S+,\s*)?use_pty\b' /etc/sudoers /etc/sudoers.d/*)

if [[ "$output" == *"use_pty"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi