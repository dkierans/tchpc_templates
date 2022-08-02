tchpc_templates/ssh
===

This folder provides useful sample files for using ssh to connect to Research IT clusters. Files include:
 - config
	Sample configuration file for connecting to rsync and cluster nodes.

config
---
Allows users to connect to rsync using "ssh rsync" instead of "ssh -l username rsync.tchpc.tcd.ie"
Allows users to connect to cluster node using single command outside TCD network eg "ssh kelvin"

Also works with scp commands
```bash
scp local_file.txt rsync:~/rsync_folder/rsync_file.txt
```	

Read comments in file for usage details.

