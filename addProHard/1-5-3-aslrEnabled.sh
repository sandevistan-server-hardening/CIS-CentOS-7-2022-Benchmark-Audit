echo "Testing 1.5.3 Ensure address space layout randomization (ASLR) is enabled (Automated)"

sysctl kernel.randomize_va_space

grep "kernel\.randomize_va_space" /etc/sysctl.conf /etc/sysctl.d/*