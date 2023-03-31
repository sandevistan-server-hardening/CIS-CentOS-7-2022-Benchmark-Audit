echo "Testing 1.2.3 Ensure gpgcheck is globally activated"

grep ^\s*gpgcheck /etc/yum.conf
output=$(grep ^\s*gpgcheck /etc/yum.conf)

if [[ "$output" == *"gpgcheck=1"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying all instances of gpgcheck are set to 1"

grep -P '^\h*gpgcheck=[^1\n\r]+\b(\h+.*)?$' /etc/yum.conf /etc/yum.repos.d/*.repo
output=$(grep -P '^\h*gpgcheck=[^1\n\r]+\b(\h+.*)?$' /etc/yum.conf /etc/yum.repos.d/*.repo)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi