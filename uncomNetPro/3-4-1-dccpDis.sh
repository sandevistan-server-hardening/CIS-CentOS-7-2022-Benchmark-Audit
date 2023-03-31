echo "Testing 3.4.1 Ensure DCCP is disabled (Automated)"

modprobe -n -v dccp

lsmod | grep dccp

