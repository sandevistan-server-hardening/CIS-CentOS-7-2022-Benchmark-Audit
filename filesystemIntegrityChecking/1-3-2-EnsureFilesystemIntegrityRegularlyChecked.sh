echo "Testing 1.3.2 Ensure filesystem integrity is regularly checked"
grep -Ers '^([^#]+\s+)?(\/usr\/s?bin\/|^\s*)aide(\.wrapper)?\s(--?\S+\s)*(- -(check|update)|\$AIDEARGS)\b' /etc/cron.* /etc/crontab /var/spool/cron/ > cis_benchmark1.3.2_audit

echo "Audit logs have been saved to the 'cis_benchmark1.3.2_audit' file in the cwd"

echo "Running commands to verify that aidcheck services are enabled and running"
systemctl is-enabled aidecheck.service
systemctl is-enabled aidecheck.timer
systemctl status aidecheck.timer