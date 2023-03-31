echo "Testing 6.2.4 Ensure shadow group is empty (Automated)"

awk -F: '($1=="shadow") {print $NF}' /etc/group

awk -F: -v GID="$(awk -F: '($1=="shadow") {print $3}' /etc/group)" '($4==GID) {print $1}' /etc/passwd