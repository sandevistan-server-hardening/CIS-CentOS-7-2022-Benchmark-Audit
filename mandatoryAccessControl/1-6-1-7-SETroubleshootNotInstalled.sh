echo "Testing 1.6.1.7 Ensure SETroubleshoot is not installed"
rpm -q setroubleshoot
output=$(rpm -q setroubleshoot)
if [[ "$output" == *"package setroubleshoot is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi  