echo "Testing 3.4.2 Ensure SCTP is disabled (Automated)"

modprobe -n -v sctp

lsmod | grep sctp

