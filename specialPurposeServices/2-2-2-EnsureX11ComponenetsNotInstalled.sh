echo "Testing 2.2.2 Ensure X11 Server components are not installed"
rpm -qa xorg-x11-server*

output=$(rpm -qa xorg-x11-server*)
if [[ -z "$output" ]]; then
  echo "pass"
else
  echo "FAIL"
fi
