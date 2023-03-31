echo "Testing 5.3.13 Ensure only strong Ciphers are used"

sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*ciphers\s+([^#]+,)?(3des- cbc|aes128-cbc|aes192-cbc|aes256-cbc|arcfour|arcfour128|arcfour256|blowfish- cbc|cast128-cbc|rijndael-cbc@lysator.liu.se)\b'
output=$(sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep -Ei '^\s*ciphers\s+([^#]+,)?(3des- cbc|aes128-cbc|aes192-cbc|aes256-cbc|arcfour|arcfour128|arcfour256|blowfish- cbc|cast128-cbc|rijndael-cbc@lysator.liu.se)\b')

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi

echo "verifying the output"

grep -Ei '^\s*ciphers\s+([^#]+,)?(3des-cbc|aes128-cbc|aes192-cbc|aes256-cbc|arcfour|arcfour128|arcfour256|blowfish-cbc|cast128-cbc|rijndael- cbc@lysator.liu.se)\b' /etc/ssh/sshd_config
output=$(grep -Ei '^\s*ciphers\s+([^#]+,)?(3des-cbc|aes128-cbc|aes192-cbc|aes256-cbc|arcfour|arcfour128|arcfour256|blowfish-cbc|cast128-cbc|rijndael- cbc@lysator.liu.se)\b' /etc/ssh/sshd_config)

if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi