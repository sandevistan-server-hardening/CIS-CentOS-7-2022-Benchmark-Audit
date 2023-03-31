echo "Testing 6.2.6 Ensure no duplicate group names exist (Automated)"

#!/bin/bash

cut -d: -f1 /etc/group | sort | uniq -d | while read -r x; do
    echo "Duplicate group name ${x} in /etc/group"
done