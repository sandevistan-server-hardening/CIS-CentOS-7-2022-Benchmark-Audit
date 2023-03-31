echo "Testing for 3.5.1.7 Ensure firewalld drops unnecessary services and ports (Manual)"

firewall-cmd --get-active-zones | awk '!/:/ {print $1}' | while read ZN; do firewall-cmd --list-all --zone=$ZN; done


# Authorization failed.
    # Make sure polkit agent is running or run the application as superuser.