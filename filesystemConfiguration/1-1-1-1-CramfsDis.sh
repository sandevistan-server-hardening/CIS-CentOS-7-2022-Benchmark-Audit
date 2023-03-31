echo "Testing 1.1.1.1 Ensure mounting of cramps filesystems is disabled (Automated)"

modprobe -n -v cramfs | grep -E '(cramfs|install)'  

output=$(modprobe -n -v cramfs | grep -E '(cramfs|install)')
if [[ "$output" == *"install /bin/true"* ]]; then
    echo "Pass"
else
    echo "Fail"
fi

lsmod | grep cramfs