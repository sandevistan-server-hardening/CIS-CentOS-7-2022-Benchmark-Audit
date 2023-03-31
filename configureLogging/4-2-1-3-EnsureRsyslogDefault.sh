echo "Testing 4.2.1.3 Ensure rsyslog default file permissions configured"

grep ^\$FileCreateMode /etc/rsyslog.conf /etc/rsyslog.d/*.conf