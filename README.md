# Vagrant-Postgresql

Postgresql with one basic DB working as master connected to an Postgresql slave machine fully functional and working.

HAProxy has been added on IP-HAPROXY:8080/haproxyadmin?stats for monitoring status and balancing load between both DB.

Munin with Postgres Plugins has been added for better monitoring. Munin can be found at IP-POSTGRESQL/munin

## How to run :
     sh start.sh
