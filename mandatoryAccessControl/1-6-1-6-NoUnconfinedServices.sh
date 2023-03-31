echo "Testing 1.6.1.6 Ensure no unconfined services exist"
ps -eZ | grep unconfined_service_t
output=$(ps -eZ | grep unconfined_service_t)
if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi