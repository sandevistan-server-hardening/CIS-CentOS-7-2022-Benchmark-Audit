echo "Testing 2.2.1 Ensure time synchronization is in use"
rpm -q chrony ntp

output=$(rpm -q chrony ntp)
if [[ "$output" == *"chrony-"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi

rpm -q ntp

output=$(rpm -q ntp)
if [[ "$output" == *"ntp-"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi