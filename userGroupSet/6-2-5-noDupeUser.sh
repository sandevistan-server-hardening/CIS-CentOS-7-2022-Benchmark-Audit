echo "Testing 6.2.5 Ensure no duplicate user names exist (Automated)"

#!/bin/bash

cut -d: -f1 /etc/passwd | sort | uniq -d | while read x; do 
    echo "Duplicate login name ${x} in /etc/passwd"
done