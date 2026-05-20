#!/bin/bash 

UPTIME=$(uptime)
HOST=$(hostname)

cat <<EOF | sudo tee /var/www/html/index.html

<html>
<head>
<title>Linux Infrastructure Monitoring & Automation System</title>
</head>
<body>
<h1>Linux Infrastructure Monitoring & Automation System</h1>
<p>This project simulates a Linux infrastructure environment with monitoring, automation, backup, and web service managemnt.</p>
<h2>Server Information</h2>
<pre>
Hostname: $HOST
Uptime: $UPTIME
</pre>
</body>
</html>

EOF

