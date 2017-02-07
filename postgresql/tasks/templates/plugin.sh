#!/bin/bash
sudo ln -s '/usr/share/munin/plugins/postgres_autovacuum'  '/etc/munin/plugins/postgres_autovacuum'
 ln -s '/usr/share/munin/plugins/postgres_bgwriter'       '/etc/munin/plugins/postgres_bgwriter'
 ln -s '/usr/share/munin/plugins/postgres_cache_'         '/etc/munin/plugins/postgres_cache_ALL'
 ln -s '/usr/share/munin/plugins/postgres_checkpoints'    '/etc/munin/plugins/postgres_checkpoints'
 ln -s '/usr/share/munin/plugins/postgres_connections_'   '/etc/munin/plugins/postgres_connections_ALL'
 ln -s '/usr/share/munin/plugins/postgres_connections_db' '/etc/munin/plugins/postgres_connections_db'
 ln -s '/usr/share/munin/plugins/postgres_locks_'         '/etc/munin/plugins/postgres_locks_ALL'
 ln -s '/usr/share/munin/plugins/postgres_querylength_'   '/etc/munin/plugins/postgres_querylength_ALL'
 ln -s '/usr/share/munin/plugins/postgres_size_'          '/etc/munin/plugins/postgres_size_ALL'
 ln -s '/usr/share/munin/plugins/postgres_transactions_'  '/etc/munin/plugins/postgres_transactions_ALL'
 ln -s '/usr/share/munin/plugins/postgres_users'          '/etc/munin/plugins/postgres_users'
 ln -s '/usr/share/munin/plugins/postgres_xlog'           '/etc/munin/plugins/postgres_xlog'
sudo chmod +x /usr/share/munin/plugins/postgres_*
sudo service munin-node restart
