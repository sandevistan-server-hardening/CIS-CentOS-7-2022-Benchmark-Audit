echo "5.4.3 Ensure password hashing algorithm is SHA-512 (Automated)"

output=$(grep -P '^\h*password\h+(sufficient|requisite|required)\h+pam_unix\.so\h+([^#\n\r]+)?sha512(\h+.*)?$' /e$

if [[ "$output" == *"sha512"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi