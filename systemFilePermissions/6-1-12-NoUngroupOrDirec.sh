echo "Testing 6.1.12 Ensure no ungrouped files or directories exist"
echo "Ensure you run command as ROOT user for correct output"

df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -nogroup
output=$(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -nogroup)

if [[ -z "$output" ]]; then
  echo "Pass"
else
  echo "Fail"
fi