echo "Testing 1.1.1.2 Ensure mounting of squashfs filesystems is disabled (Automated)"

modprobe -n -v squashfs | grep -E '(squashfs|install)'

output=$(modprobe -n -v squashfs | grep -E '(squashfs|install)')
if [[ "$output" == *"install /bin/true"* ]]; then
	echo "Pass"
else
	echo "Fail"
fi

lsmod | grep squashfs