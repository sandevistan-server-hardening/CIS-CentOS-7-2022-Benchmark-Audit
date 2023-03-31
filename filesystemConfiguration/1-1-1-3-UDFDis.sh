echo "Testing 1.1.1.3 Ensure mounting of udf filesystems is disabled (Automated)"

modprobe -n -v udf | grep -E '(udf|install)' 

output=$(modprobe -n -v udf | grep -E '(udf|install)' )
if [[ "$output" == *"install /bin/true"* ]]; then
	echo "Pass"
else
	echo "Fail"
fi

lsmod | grep udf