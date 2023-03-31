echo "Testing 6.1.10 Ensure no world writable files exist"
echo "Ensure you run command as ROOT user for correct output"

df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -0002

df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -0002

output=$(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type f -perm -0002)
if [[ -z "$output" ]]; then
  echo "Pass"
else
  echo "Fail"
fi