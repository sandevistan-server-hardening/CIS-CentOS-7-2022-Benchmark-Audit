echo "Testing 2.2.9 Ensure HTTP Server is not installed"
rpm -q httpd

output=$(rpm -q httpd)
if [[ "$output" == *"package httpd is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi