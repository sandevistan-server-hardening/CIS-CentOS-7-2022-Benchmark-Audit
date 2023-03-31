echo "Testing 4.2.1.6 Ensure remote rsyslog messages are only accepted on designated log hosts"

grep '$ModLoad imtcp' /etc/rsyslog.conf /etc/rsyslog.d/*.conf

grep '$InputTCPServerRun' /etc/rsyslog.conf /etc/rsyslog.d/*.conf