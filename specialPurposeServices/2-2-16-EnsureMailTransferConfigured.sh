echo "Testing 2.2.16 Ensure mail transfer agent is configured for local-only mode"
ss -lntu | grep -E ':25\s' | grep -E -v '\s(127.0.0.1|\[?::1\]?):25\s'

output=$(ss -lntu | grep -E ':25\s' | grep -E -v '\s(127.0.0.1|\[?::1\]?):25\s')
if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi