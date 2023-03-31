echo "5.4.2 Ensure lockout for failed password attempts is configured (Automated)"

output=$(grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth)

if [[ "$output" == "/etc/pam.d/system-auth:account required pam_faillock.so" && "/etc/pam.d/password-auth:account$
  echo "pass"
else
  echo "FAIL"
fi