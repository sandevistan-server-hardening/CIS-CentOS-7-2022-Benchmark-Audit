echo "Running test for Configure PAM"
echo "5.4.1 Ensure password creation requirements are configured (Automated)"

grep '^\s*minlen\s*' /etc/security/pwquality.conf

if grep '^\s*minclass\s*' /etc/security/pwquality.conf; then
	echo "Found"
elif grep -E '^\s*[duol]credit\s*' /etc/security/pwquality.conf; then
	echo "Found"
else
	echo "Not Found"
fi

grep -P '^\s*password\s+(?:requisite|required)\s+pam_pwquality\.so\s+(?:\S+\s+)*(?!\2) (retry=[1-3]|try_first_pass)\s+(?:\S+\s+)*(?!\1)(retry=[1-3]|try_first_pass)\s*(?:\s+\S+\s*)*(?:\s+#.*)?$' /etc/pam.d/password-auth

grep -P '^\s*password\s+(?:requisite|required)\s+pam_pwquality\.so\s+(?:\S+\s+)*(?!\2)(retry=[1-3]|try_first_pass)\s+(?:\S+\s+)*(?!\1)(retry=[1-3]|try_first_pass)\s*(?:\s+\S+\s*)*(?:\s+#.*)?$' /etc/pam.d/system-auth