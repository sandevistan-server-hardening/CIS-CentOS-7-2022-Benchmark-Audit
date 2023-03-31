echo "Testing 2.2.4 Ensure CUPS is not installed"
rpm -q cups

output=$(rpm -q cups)
if [[ "$output" == *"package cups is not installed"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi