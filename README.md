


# Linux Infrastructure Monitoring & Automation System


## Project overview


This project is a hands-on Linux infrastructure project designed to simulate a small server environment using two Fedora Linux virtual machines.


The environment consists of:

  - web-server
 
  - backup-server

The purpose of this project is to build practical experience in Linux infrastructure management, service deployment, system monitoring, 
automation, troubleshooting, and backup operations.

Instead of practicing isolated commands, this project focuses on creating and managing a complete where multiple systems communicate and
operate together.


## Project Justification

The goal of this project is to develop practical Linux infrastructure skills by building and managing a simulated server environment focused on
monitoring, automation, and system management.

This project was created to:

  
  - Understand Linux server deployment and management

  - Practice SSH communication between systems

  - Configure and manage  Apache web services

  - Implement monitoring and Bash automation  scripts

  - Automate administrative tasks using cron jobs

  - Perform backup and recovery operations
 
  - Strengthen troubleshooting and system management skills


---


## Architecture

```text

               Host Machine
                   |
            VMware Workstation
                   |
    -------------------------------
    |                             |
   web-server               backup-server  
  192.168.231.128           192.168.231.129

```

---


## Environment
   
   Operating system:
   
   - Fedora server

   Virtualization:

   - VMware 

   Network:
   
   - NAT + Internal Network

---

## Installed Services

### Web Server

service:

  - Apache (httpd)

Commands:
  
```bash

sudo dnf install httpd -y
sudo systemctl enable --now httpd

```

### SSH

Service:


```bash

sudo systemctl enable --now sshd

```

## Monitoring Scripts

### system_monitor.sh

Purpose:

   - Hostname
    
   - Uptime
    
   - Memory usage
    
   - Disk usage
    
   - Running processes
  
Run:

```bash
 
./system_monitor.sh

```

---


### Server_dashboard.sh

Purpose:

    
   - System information
    
   - Resource usage
    
   - Network ports
    
   - Top processes

Run:

```bash

./server_dashboard.sh

```

---


### Backup Script


### backup_web.sh

Purpose:

Creates compressed backups of:

```text

/var/www/html

```

Run:

```bash

./backup_web.sh

```

Backup location:

```text

/backups/apache

```

---


## Cron Jobs


Monitoring:

```bash

0 * * * * /home/sasi/scripts/system_monitor.sh >> /home/sasi/logs/health.log

```

Backup:

```bash

0 2 * * * /home/sasi/scripts/backup_web.sh >> /home/sasi/logs/backup.log

```

## User Management

Created:

Users:
 
  - john

  - mike

  - dev1

Groups:

  - admins
 
  - developers

---

## Troubleshooting Scenarios Practised

1. Apache stopped unexpectedly

Diagnosis:

```bash

systemctl status httpd

```

Fix:


```bash

sudo systemctl start httpd

```

2. Incorrect permissions on the webpage

Diagnosis:

```bash

tail -f /var/log/httpd/error_log

```

Fix:

```bash

sudo chmod 644 /var/www/html/index.html

```

---

## Skills Demonstrated

  - Linux administration
 
  - Service management

  - Bash scripting
 
  - SSH configuration

  - Firewall configuration
 
  - Cron automation
 
  - User and permission management
 
  - Troubleshooting
 
  - Backup and recovery
 
