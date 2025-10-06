#!/bin/bash

k get deploy
k get po 
k describe po green-deployment-cka15-trb-7ffcd7dd9b-f9tqf
#Warning  BackOff    48s (x3 over 119s)   kubelet            Back-off restarting failed container mysql in pod green-deployment-cka15-trb-7ffcd7dd9b-f9tqf_default(219fb2ab-c3c1-46f9-aeb6-57a0395fcd90)
k logs green-deployment-cka15-trb-7ffcd7dd9b-f9tqf
# 2025-10-06 03:27:58 94 [Note] RSA private key file not found: /var/lib/mysql//private_key.pem. Some authentication plugins will not work.
# 2025-10-06 03:27:58 94 [Note] RSA public key file not found: /var/lib/mysql//public_key.pem. Some authentication plugins will not work.
# PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !
# green-root-pass-cka15-trb
# 2025-10-06 03:39:31+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.6.51-1debian9 started.
# 2025-10-06 03:39:32+00:00 [Note] [Entrypoint]: Switching to dedicated user 'mysql'
# 2025-10-06 03:39:32+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 5.6.51-1debian9 started.
# 2025-10-06 03:39:33+00:00 [Note] [Entrypoint]: Initializing database files
# 2025-10-06 03:39:34 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
# 2025-10-06 03:39:34 0 [Note] Ignoring --secure-file-priv value as server is running with --bootstrap.
# 2025-10-06 03:39:34 0 [Note] /usr/sbin/mysqld (mysqld 5.6.51) starting as process 94 ...
# 2025-10-06 03:39:34 94 [Note] InnoDB: Using atomics to ref count buffer pool pages
# 2025-10-06 03:39:34 94 [Note] InnoDB: The InnoDB memory heap is disabled
# 2025-10-06 03:39:34 94 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
# 2025-10-06 03:39:34 94 [Note] InnoDB: Memory barrier is not used
# 2025-10-06 03:39:34 94 [Note] InnoDB: Compressed tables use zlib 1.2.11
# 2025-10-06 03:39:34 94 [Note] InnoDB: Using Linux native AIO
# 2025-10-06 03:39:34 94 [Note] InnoDB: Using CPU crc32 instructions
# 2025-10-06 03:39:34 94 [Note] InnoDB: Initializing buffer pool, size = 128.0M
# 2025-10-06 03:39:34 94 [Note] InnoDB: Completed initialization of buffer pool
# 2025-10-06 03:39:34 94 [Note] InnoDB: The first specified data file ./ibdata1 did not exist: a new database to be created!
# 2025-10-06 03:39:34 94 [Note] InnoDB: Setting file ./ibdata1 size to 12 MB
# 2025-10-06 03:39:34 94 [Note] InnoDB: Database physically writes the file full: wait...
# 2025-10-06 03:39:34 94 [Note] InnoDB: Setting log file ./ib_logfile101 size to 48 MB
# 2025-10-06 03:39:34 94 [Note] InnoDB: Setting log file ./ib_logfile1 size to 48 MB
# 2025-10-06 03:39:35 94 [Note] InnoDB: Renaming log file ./ib_logfile101 to ./ib_logfile0
# 2025-10-06 03:39:35 94 [Warning] InnoDB: New log files created, LSN=45781
# 2025-10-06 03:39:35 94 [Note] InnoDB: Doublewrite buffer not found: creating new
# 2025-10-06 03:39:35 94 [Note] InnoDB: Doublewrite buffer created
# 2025-10-06 03:39:35 94 [Note] InnoDB: 128 rollback segment(s) are active.
# 2025-10-06 03:39:35 94 [Warning] InnoDB: Creating foreign key constraint system tables.
# 2025-10-06 03:39:35 94 [Note] InnoDB: Foreign key constraint system tables created
# 2025-10-06 03:39:35 94 [Note] InnoDB: Creating tablespace and datafile system tables.
# 2025-10-06 03:39:35 94 [Note] InnoDB: Tablespace and datafile system tables created.
# 2025-10-06 03:39:35 94 [Note] InnoDB: Waiting for purge to start
# 2025-10-06 03:39:35 94 [Note] InnoDB: 5.6.51 started; log sequence number 0
# 2025-10-06 03:39:35 94 [Note] RSA private key file not found: /var/lib/mysql//private_key.pem. Some authentication plugins will not work.
# 2025-10-06 03:39:35 94 [Note] RSA public key file not found: /var/lib/mysql//public_key.pem. Some authentication plugins will not work.
# 2025-10-06 03:39:35 94 [Note] Binlog end
# 2025-10-06 03:39:35 94 [Note] InnoDB: FTS optimize thread exiting.
# 2025-10-06 03:39:35 94 [Note] InnoDB: Starting shutdown...
# 2025-10-06 03:39:37 94 [Note] InnoDB: Shutdown completed; log sequence number 1625977


# 2025-10-06 03:39:37 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
# 2025-10-06 03:39:37 0 [Note] Ignoring --secure-file-priv value as server is running with --bootstrap.
# 2025-10-06 03:39:37 0 [Note] /usr/sbin/mysqld (mysqld 5.6.51) starting as process 117 ...
# 2025-10-06 03:39:37 117 [Note] InnoDB: Using atomics to ref count buffer pool pages
# 2025-10-06 03:39:37 117 [Note] InnoDB: The InnoDB memory heap is disabled
# 2025-10-06 03:39:37 117 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
# 2025-10-06 03:39:37 117 [Note] InnoDB: Memory barrier is not used
# 2025-10-06 03:39:37 117 [Note] InnoDB: Compressed tables use zlib 1.2.11
# 2025-10-06 03:39:37 117 [Note] InnoDB: Using Linux native AIO
# 2025-10-06 03:39:37 117 [Note] InnoDB: Using CPU crc32 instructions
# 2025-10-06 03:39:37 117 [Note] InnoDB: Initializing buffer pool, size = 128.0M
# 2025-10-06 03:39:37 117 [Note] InnoDB: Completed initialization of buffer pool
# 2025-10-06 03:39:37 117 [Note] InnoDB: Highest supported file format is Barracuda.
# 2025-10-06 03:39:38 117 [Note] InnoDB: 128 rollback segment(s) are active.
# 2025-10-06 03:39:38 117 [Note] InnoDB: Waiting for purge to start
# 2025-10-06 03:39:38 117 [Note] InnoDB: 5.6.51 started; log sequence number 1625977
# 2025-10-06 03:39:38 117 [Note] RSA private key file not found: /var/lib/mysql//private_key.pem. Some authentication plugins will not work.
# 2025-10-06 03:39:38 117 [Note] RSA public key file not found: /var/lib/mysql//public_key.pem. Some authentication plugins will not work.
# 2025-10-06 03:39:38 117 [Note] Binlog end
# 2025-10-06 03:39:38 117 [Note] InnoDB: FTS optimize thread exiting.
# 2025-10-06 03:39:38 117 [Note] InnoDB: Starting shutdown...
# 2025-10-06 03:39:39 117 [Note] InnoDB: Shutdown completed; log sequence number 1625987




# PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !
# To do so, start the server, then issue the following commands:

#   /usr/bin/mysqladmin -u root password 'new-password'
#   /usr/bin/mysqladmin -u root -h green-deployment-cka15-trb-7ffcd7dd9b-f9tqf password 'new-password'

# Alternatively you can run:

#   /usr/bin/mysql_secure_installation

# which will also give you the option of removing the test
# databases and anonymous user created by default.  This is
# strongly recommended for production servers.

# See the manual for more instructions.

# Please report any problems at http://bugs.mysql.com/

# The latest information about MySQL is available on the web at

#   http://www.mysql.com

# Support MySQL by buying support/licenses at http://shop.mysql.com

# Note: new default config file not created.
# Please make sure your config file is current

# WARNING: Default config file /etc/mysql/my.cnf exists on the system
# This file will be read by default by the MySQL server
# If you do not want to use this, either remove it, or use the
# --defaults-file argument to mysqld_safe when starting the server

# 2025-10-06 03:39:39+00:00 [Note] [Entrypoint]: Database files initialized
# 2025-10-06 03:39:39+00:00 [Note] [Entrypoint]: Starting temporary server
# 2025-10-06 03:39:39+00:00 [Note] [Entrypoint]: Waiting for server startup
# /usr/local/bin/docker-entrypoint.sh: line 113:   142 Killed                  "$@" --skip-networking --default-time-zone=SYSTEM --socket="${SOCKET}"
# 2025-10-06 03:40:13+00:00 [ERROR] [Entrypoint]: Unable to start server.

#TBH idk la...i ask chatgpt they say might be resources so I delete the resources section it worked LMAO
k edit deploy green-deployment-cka15-trb -o yaml --save-config