echo "Testing 2.4 Ensure nonessential services are removed or masked (Manual)"

lsof -i -P -n | grep -v "(ESTABLISHED)"