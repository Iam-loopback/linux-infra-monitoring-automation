#!/bin/bash 

UPTIME=$(uptime)
HOST=$(hostname)

cat <<EOF | sudo tee /var/www/html/index.html

<html>
<head>
<title>Linux Admin Lab></title>
</head>
<body>
<h1>Linux Adminstration Project</h1>
<p>This server is managed by Sasikumar</p>
<h2>Server Information</h2>
<pre>
Hostname: $HOST
Uptime: $UPTIME
</pre>
</body>
</html>

EOF

