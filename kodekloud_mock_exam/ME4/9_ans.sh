#!/bin/bash

etcdctl snapshot restore /opt/cluster1_backup_to_restore.db --data-dir /root/default.etcd

vi /etc/kubernetes/manifests/etcd.yaml
#change etcd data volume to /roor/default.etcd (not volumemounts ah!), as well as --data/dir argument