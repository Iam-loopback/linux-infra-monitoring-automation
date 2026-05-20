#!/bin/bash
DATE=$(date +%F-%H-%M)
tar -czf /backups/apache/web_backup_$DATE.tar.gz /var/www/html
echo "Backup completed at $(date)"
