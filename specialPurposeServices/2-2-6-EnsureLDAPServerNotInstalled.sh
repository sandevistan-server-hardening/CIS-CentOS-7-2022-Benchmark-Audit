echo "Testing 2.2.6 Ensure LDAP Server is not installed"
rpm -q openldap-servers

output=$(rpm -q openldap-servers)
if [[ "$output" == *"package openldap-servers is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi