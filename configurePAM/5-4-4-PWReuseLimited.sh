echo "5.4.4 Ensure password reuse is limited (Automated)"

output=$(grep -P '^\s*password\s+(sufficient|requisite|required)\s+pam_unix\.so\s+([^#]+\s+)*remember=([5-9]|[1-9][0-9]+)\b' /etc/pam.d/system-auth /etc/pam.d/password-auth)

if [[ "$output" == *"/etc/pam.d/system-auth:password sufficient pam_unix.so remember=5"* && *"/etc/pam.d/password-auth:password sufficient pam_unix.so remember=5"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi