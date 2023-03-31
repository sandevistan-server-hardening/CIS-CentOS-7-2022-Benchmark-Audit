echo "Testing 5.3.14 Ensure only strong MAC algorithms are used"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*macs\s+([^#]+,)?(hmac- md5|hmac-md5-96|hmac-ripemd160|hmac-sha1|hmac-sha1-96|umac- 64@openssh\.com|hmac-md5-etm@openssh\.com|hmac-md5-96-etm@openssh\.com|hmac- ripemd160-etm@openssh\.com|hmac-sha1-etm@openssh\.com|hmac-sha1-96- etm@openssh\.com|umac-64-etm@openssh\.com|umac-128-etm@openssh\.com)\b'
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*macs\s+([^#]+,)?(hmac- md5|hmac-md5-96|hmac-ripemd160|hmac-sha1|hmac-sha1-96|umac- 64@openssh\.com|hmac-md5-etm@openssh\.com|hmac-md5-96-etm@openssh\.com|hmac- ripemd160-etm@openssh\.com|hmac-sha1-etm@openssh\.com|hmac-sha1-96- etm@openssh\.com|umac-64-etm@openssh\.com|umac-128-etm@openssh\.com)\b')

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*macs\s+([^#]+,)?(hmac-md5|hmac-md5-96|hmac-ripemd160|hmac- sha1|hmac-sha1-96|umac-64@openssh\.com|hmac-md5-etm@openssh\.com|hmac-md5-96- etm@openssh\.com|hmac-ripemd160-etm@openssh\.com|hmac-sha1- etm@openssh\.com|hmac-sha1-96-etm@openssh\.com|umac-64-etm@openssh\.com|umac- 128-etm@openssh\.com)\b' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*macs\s+([^#]+,)?(hmac-md5|hmac-md5-96|hmac-ripemd160|hmac- sha1|hmac-sha1-96|umac-64@openssh\.com|hmac-md5-etm@openssh\.com|hmac-md5-96- etm@openssh\.com|hmac-ripemd160-etm@openssh\.com|hmac-sha1- etm@openssh\.com|hmac-sha1-96-etm@openssh\.com|umac-64-etm@openssh\.com|umac- 128-etm@openssh\.com)\b' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi